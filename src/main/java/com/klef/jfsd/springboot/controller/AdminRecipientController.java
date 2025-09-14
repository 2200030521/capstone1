package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.klef.jfsd.springboot.model.AdminRecipient;
import com.klef.jfsd.springboot.service.AdminRecipientService;

@Controller
public class AdminRecipientController {

    @Autowired
    private AdminRecipientService adminRecipientService;

    // Register recipient
    @PostMapping("/registerRecipient")
    public String registerRecipient(@ModelAttribute AdminRecipient adminRecipient) {
        adminRecipientService.saveRecipient(adminRecipient);
        return "redirect:/viewRecipients";
    }

    @GetMapping("/viewRecipients")
    public String viewRecipientsPage(Model model) {
        List<AdminRecipient> recipients = adminRecipientService.getAllRecipients();
        model.addAttribute("recipients", recipients);
        return "viewRecipients";
    }

    // Update recipient (load form with existing data)
    @GetMapping("/updateRecipient/{id}")
    public String updateRecipientForm(@PathVariable int id, Model model) {
        AdminRecipient recipient = adminRecipientService.getRecipientById(id);
        model.addAttribute("recipient", recipient);
        return "updateRecipient";
    }

    @PostMapping("/updateRecipient")
    public String updateRecipient(@ModelAttribute AdminRecipient adminRecipient) {
        adminRecipientService.updateRecipient(adminRecipient);
        return "redirect:/viewRecipients";
    }

    // Delete recipient
    @PostMapping("/deleteRecipient")
    public String deleteRecipient(@RequestParam int id) {
        adminRecipientService.deleteRecipientById(id);
        return "redirect:/viewRecipients";
    }
}
