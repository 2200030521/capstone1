package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.ContactForm;

public interface ContactFormRepository extends JpaRepository<ContactForm, Long> {
    // You can add custom queries here if needed
}
