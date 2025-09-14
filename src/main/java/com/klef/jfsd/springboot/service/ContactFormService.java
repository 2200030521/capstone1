package com.klef.jfsd.springboot.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.ContactForm;
import com.klef.jfsd.springboot.repository.ContactFormRepository;

@Service
public class ContactFormService {

    @Autowired
    private ContactFormRepository contactFormRepository;

    public void saveContactForm(ContactForm contactForm) {
        contactFormRepository.save(contactForm);
    }
}
