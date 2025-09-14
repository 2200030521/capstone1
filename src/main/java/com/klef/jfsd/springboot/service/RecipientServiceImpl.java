package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.DonationRequest;
import com.klef.jfsd.springboot.model.Recipient;
import com.klef.jfsd.springboot.repository.DonationRequestRepository;
import com.klef.jfsd.springboot.repository.RecipientRepository;

@Service
public class RecipientServiceImpl implements RecipientService {

    @Autowired
    private RecipientRepository recipientRepository;

    @Autowired
    private DonationRequestRepository donationRequestRepository;

    @Override
    public String registerRecipient(Recipient recipient) {
        if (recipientRepository.findByEmail(recipient.getEmail()) == null) {
            recipientRepository.save(recipient);
            return "Registration Successful";
        } else {
            return "Email already registered";
        }
    }

    @Override
    public Recipient checkRecipientLogin(String email, String password) {
        Recipient recipient = recipientRepository.findByEmail(email);
        if (recipient != null && recipient.getPassword().equals(password)) {
            return recipient;
        }
        return null;
    }

    @Override
    public String submitDonationRequest(DonationRequest donationRequest) {
        donationRequestRepository.save(donationRequest);
        return "Request submitted successfully";
    }
    
    public boolean changePassword(String email, String currentPassword, String newPassword) {
        Recipient recipient = recipientRepository.findByEmail(email);
        if (recipient != null && recipient.getPassword().equals(currentPassword)) {
            recipient.setPassword(newPassword);
            recipientRepository.save(recipient);
            return true;
        }
        return false;
    }
    
    @Override
    public boolean resetPasswordByEmail(String email, String newPassword) {
        Recipient recipient = recipientRepository.findByEmail(email);
        if (recipient != null) {
            recipient.setPassword(newPassword);
            recipientRepository.save(recipient);
            return true;
        } else {
            return false;
        }
    }
}
