package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Donation;
import com.klef.jfsd.springboot.model.DonationRequest;
import com.klef.jfsd.springboot.model.Donor;
import com.klef.jfsd.springboot.repository.DonationRequestRepository;
import com.klef.jfsd.springboot.repository.DonorRepository;
import com.klef.jfsd.springboot.service.DonorService;
import com.klef.jfsd.springboot.service.EmailService;

import jakarta.servlet.http.HttpSession;
import java.util.List;

@Controller
public class DonorController {

    @Autowired
    private DonorService donorService;

    @Autowired
    private DonorRepository donorRepository;

    @Autowired
    private DonationRequestRepository donationRequestRepository;

    @Autowired
    private EmailService emailService;

    @GetMapping("/")
    public ModelAndView home() {
        return new ModelAndView("home");
    }

    @GetMapping("/donorregistration")
    public ModelAndView donorRegistrationForm() {
        ModelAndView mv = new ModelAndView("donorregistration");
        mv.addObject("donor", new Donor());
        return mv;
    }

    @PostMapping("/registerDonor")
    public String registerDonor(Donor donor, HttpSession session) {
        String verificationCode = donorService.registerDonorAndGenerateCode(donor);
        emailService.sendVerificationEmail(donor.getEmail(), verificationCode);
        session.setAttribute("donor", donor);
        return "redirect:/verifyEmail.jsp";
    }

    // Place the verifyCode method here
    @PostMapping("/verifyCode")
    public String verifyCode(@RequestParam("verificationCode") String verificationCode, HttpSession session) {
        Donor donor = (Donor) session.getAttribute("donor");
        if (donor != null && donor.getVerificationCode().equals(verificationCode)) {
            donor.setVerified(true);
            donorRepository.save(donor);
            return "redirect:/donorlogin.jsp";
        } else {
            return "redirect:/verifyEmail.jsp?error=Invalid Code";
        }
    }

    @PostMapping("/loginDonor")
    public ModelAndView loginDonor(@RequestParam("email") String email, @RequestParam("password") String password) {
        Donor donor = donorService.validateDonor(email, password);

        if (donor != null) {
            return new ModelAndView("redirect:/donor.jsp");
        } else {
            ModelAndView mv = new ModelAndView("donorlogin");
            mv.addObject("error", "Invalid email or password");
            return mv;
        }
    }

    @PostMapping("/submitDonation")
    @ResponseBody
    public String submitDonation(
            @RequestParam("itemName") String itemName,
            @RequestParam("timeOfPreparation") int timeOfPreparation,
            @RequestParam("quantity") int quantity,
            @RequestParam("address") String address,
            HttpSession session) {

        Donation donation = new Donation();
        donation.setItemName(itemName);
        donation.setTimeOfPreparation(timeOfPreparation);
        donation.setQuantity(quantity);
        donation.setAddress(address);

        donorService.saveDonation(donation);
        session.setAttribute("donation", donation);
        return "Donation submitted successfully!";
    }

    @GetMapping("/viewdonations")
    public ModelAndView viewAllDonations(HttpSession session) {
        List<Donation> donations = donorService.getAllDonations();
        ModelAndView mv = new ModelAndView("recipientdonations");
        mv.addObject("donations", donations);
        return mv;
    }@GetMapping("/yourdonation")
    public ModelAndView viewDonation(HttpSession session) {
        Donor loggedInDonor = (Donor) session.getAttribute("loggedInDonor");
        ModelAndView mv = new ModelAndView("yourdonation");

        if (loggedInDonor != null) {
            List<Donation> donations = donorService.getDonationsByDonor(loggedInDonor.getId());

            if (!donations.isEmpty()) {
                mv.addObject("donations", donations);
            } else {
                mv.addObject("message", "No donations submitted yet.");
            }
        } else {
            mv.addObject("message", "No donor logged in.");
        }

        return mv;
    }


    @PostMapping("/donorchangePassword")
    public String changePassword(@RequestParam("email") String email,
                                 @RequestParam("currentPassword") String currentPassword,
                                 @RequestParam("newPassword") String newPassword,
                                 @RequestParam("confirmPassword") String confirmPassword,
                                 Model model) {
        Donor donor = donorService.findByEmail(email);

        if (donor == null) {
            model.addAttribute("error", "Donor not found");
            return "donorchangePassword";
        }

        if (!donor.getPassword().equals(currentPassword)) {
            model.addAttribute("error", "Current password is incorrect");
            return "donorchangePassword";
        }

        if (!newPassword.equals(confirmPassword)) {
            model.addAttribute("error", "New passwords do not match");
            return "donorchangePassword";
        }

        donor.setPassword(newPassword);
        donorService.save(donor);

        model.addAttribute("success", "Password changed successfully");
        return "donorchangePassword";
    }
    
    @GetMapping("viewDonationRequests")
    public ModelAndView viewDonationRequests() {
        List<DonationRequest> donationRequests = donorService.viewDonationRequests();
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewDonationRequests");
        mv.addObject("donationrequestlist", donationRequests);
        return mv;
    }
    
}