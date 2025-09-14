package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.klef.jfsd.springboot.model.RecipientFeedback;
import com.klef.jfsd.springboot.repository.RecipientFeedbackRepository;

@Controller
public class RecipientfeedbackController {

    @Autowired
    private RecipientFeedbackRepository recipientFeedbackRepository;

    // Display feedback form
    @GetMapping("/recipientfeedback")
    public String showFeedbackForm(Model model) {
        model.addAttribute("recipientFeedback", new RecipientFeedback());
        return "recipientfeedback"; // Returning feedback.jsp (or recipientfeedback.jsp)
    }

    // Handle feedback submission
    @PostMapping("/submitRecipientFeedback")
    public String submitFeedback(RecipientFeedback feedback, Model model) {
        recipientFeedbackRepository.save(feedback); // Save feedback to the database
        model.addAttribute("message", "Thank you for your feedback!"); // Success message
        return "recipientfeedback"; // Return to the feedback form with a success message
    }
}
