package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.DonationRequest;
import org.springframework.ui.Model;
import com.klef.jfsd.springboot.model.Recipient;
import com.klef.jfsd.springboot.service.RecipientService;

import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class RecipientController {

    @Autowired
    private RecipientService recipientService;

    @GetMapping("/recipientreg")
    public ModelAndView recipientRegistrationPage() {
        ModelAndView mv = new ModelAndView("recipientreg");
        mv.addObject("recipient", new Recipient());
        return mv;
    }

    @GetMapping("/recipientlogin")
    public ModelAndView recipientLoginPage() {
        return new ModelAndView("recipientlogin");
    }

    @PostMapping("/registerrecipient")
    public String registerRecipient(@ModelAttribute Recipient recipient) {
        String message = recipientService.registerRecipient(recipient);

        if ("Registration Successful".equals(message)) {
            return "redirect:/recipientlogin";
        } else {
            return "recipientreg";
        }
    }

    @PostMapping("/loginrecipient")
    public ModelAndView loginRecipient(@RequestParam("email") String email, 
                                       @RequestParam("password") String password, 
                                       HttpSession session) {
        Recipient recipient = recipientService.checkRecipientLogin(email, password);

        if (recipient != null) {
            session.setAttribute("loggedInRecipient", recipient);
            return new ModelAndView("recipient");
        } else {
            ModelAndView mv = new ModelAndView("recipientlogin");
            mv.addObject("error", "Invalid email or password.");
            return mv;
        }
    }

    @PostMapping("/submitDonationRequest")
    public ModelAndView submitDonationRequest(@ModelAttribute DonationRequest donationRequest) {
        String message = recipientService.submitDonationRequest(donationRequest);
        
        ModelAndView mv = new ModelAndView("requestDonationConfirmation");
        mv.addObject("message", message);
        return mv;
    }
    
    @PostMapping("/resetPassword")
    public String resetPassword(@RequestParam("email") String email, 
                                @RequestParam("newPassword") String newPassword, 
                                RedirectAttributes redirectAttributes) {
        boolean result = recipientService.resetPasswordByEmail(email, newPassword);
        if (result) {
            redirectAttributes.addFlashAttribute("message", "Password reset successfully.");
            return "redirect:/recipientlogin"; // Redirect to a login page or success page
        } else {
            redirectAttributes.addFlashAttribute("error", "Email not found.");
            return "redirect:/recipientforgot"; // Redirect back to the reset form
        }
    }
    @PostMapping("/recipientchangePassword")
    public String changePassword(@RequestParam("email") String email,
                                 @RequestParam("currentPassword") String currentPassword,
                                 @RequestParam("newPassword") String newPassword,
                                 @RequestParam("confirmPassword") String confirmPassword,
                                 Model model) {
        if (!newPassword.equals(confirmPassword)) {
            model.addAttribute("error", "New password and confirm password do not match.");
            return "recipientchangePassword"; // Return to the same page with error
        }
        
        boolean success = recipientService.changePassword(email, currentPassword, newPassword);
        if (success) {
            model.addAttribute("message", "Password changed successfully.");
        } else {
            model.addAttribute("error", "Invalid email or current password.");
        }
        return "recipientchangePassword"; // Return to the same page with message
    }
}

