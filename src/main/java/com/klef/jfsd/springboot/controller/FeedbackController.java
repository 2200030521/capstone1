package com.klef.jfsd.springboot.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.repository.FeedbackRepository;

@Controller
public class FeedbackController {

    @Autowired
    private FeedbackRepository feedbackRepository;

    // Display feedback form
    @GetMapping("/feedback")
    public String showFeedbackForm(Model model) {
        model.addAttribute("feedback", new Feedback());
        return "feedback";
    }

    // Handle feedback submission
    @PostMapping("/submitFeedback")
    public String submitFeedback(Feedback feedback, Model model) {
        feedbackRepository.save(feedback);
        model.addAttribute("message", "Thank you for your feedback!");
        return "feedback"; // Redirect back to feedback form with success message
    }
}
