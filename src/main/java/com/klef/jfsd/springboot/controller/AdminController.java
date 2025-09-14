package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.apache.tomcat.util.http.parser.Host;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Candidate;
import com.klef.jfsd.springboot.model.DonationRequest;
import com.klef.jfsd.springboot.model.Donor;
import com.klef.jfsd.springboot.model.DonorHistory;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.DonorHistoryService;
import com.klef.jfsd.springboot.service.DonorService;


@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private DonorService donorService;
    
    @Autowired
    private DonorHistoryService donorHistoryService;

    @GetMapping("/adminlogin")
    public ModelAndView adminLoginForm() {
        return new ModelAndView("adminlogin");
    }
    @PostMapping("/loginAdmin")
    public ModelAndView loginAdmin(@RequestParam("username") String username, 
                                   @RequestParam("password") String password) {
        Admin admin = adminService.validateAdmin(username, password);

        if (admin != null) {
            // Successful login, redirect to adminNavbar.jsp
            return new ModelAndView("redirect:/adminNavbar.jsp");
        } else {
            // Login failed, show error message and stay on login page
            ModelAndView mv = new ModelAndView("adminlogin");
            mv.addObject("error", "Invalid username or password");
            return mv;
        }
    }


    @GetMapping("/adminchangePassword")
    public ModelAndView changePasswordForm() {
        return new ModelAndView("adminchangePassword");
    }

    @PostMapping("/changePassword")
    public ModelAndView changePassword(
        @RequestParam("email") String email,
        @RequestParam("currentPassword") String currentPassword,
        @RequestParam("newPassword") String newPassword,
        @RequestParam("confirmPassword") String confirmPassword) {

        ModelAndView mv = new ModelAndView("adminchangePassword");

        if (!newPassword.equals(confirmPassword)) {
            mv.addObject("error", "New password and confirm password do not match");
            return mv;
        }

        Admin admin = adminService.validateAdmin(email, currentPassword);
        if (admin != null) {
            adminService.updateAdminPassword(email, newPassword);
            mv.addObject("message", "Password changed successfully");
        } else {
            mv.addObject("error", "Invalid current password");
        }

        return mv;
    }

    @GetMapping("/viewalldonors")
    public ModelAndView viewAllDonors() {
        List<Donor> donors = adminService.viewAllDonors(); // Fetch donor list from the service
        ModelAndView mv = new ModelAndView("viewAllDonors");
        mv.addObject("donorslist", donors); // Add to model
        return mv;
    }


}
