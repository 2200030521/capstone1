package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.klef.jfsd.springboot.model.ContactForm;
import com.klef.jfsd.springboot.service.ContactFormService;

@Controller
public class ContactFormController {

    @Autowired
    private ContactFormService contactFormService;

    // Handles form submission
    @PostMapping("/submitContactForm")
    public String submitContactForm(@ModelAttribute ContactForm contactForm) {
        contactFormService.saveContactForm(contactForm);
        return "Thankyou";  // Ensure this matches the name of your view file
    }
    
    // Mapping to show the contact form page (if needed)
    @RequestMapping("/contact")
    public String showContactForm() {
        return "contactForm";  // Return the name of the contact form view
    }
}
