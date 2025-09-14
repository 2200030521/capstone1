package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.AdminRecipient;
import com.klef.jfsd.springboot.repository.AdminRecipientRepository;

import java.util.List;

@Service
public class AdminRecipientService {

    @Autowired
    private AdminRecipientRepository adminRecipientRepository;

    // Save recipient
    public AdminRecipient saveRecipient(AdminRecipient recipient) {
        return adminRecipientRepository.save(recipient);
    }

    // Fetch all recipients
    public List<AdminRecipient> getAllRecipients() {
        return adminRecipientRepository.findAll();
    }

    // Get recipient by ID
    public AdminRecipient getRecipientById(int id) {
        return adminRecipientRepository.findById(id).orElse(null);
    }

    // Update recipient
    public AdminRecipient updateRecipient(AdminRecipient recipient) {
        return adminRecipientRepository.save(recipient);
    }

    // Delete recipient by ID
    public void deleteRecipientById(int id) {
        adminRecipientRepository.deleteById(id);
    }
}
