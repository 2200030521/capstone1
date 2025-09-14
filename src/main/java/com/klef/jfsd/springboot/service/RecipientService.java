package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.DonationRequest;
import com.klef.jfsd.springboot.model.Recipient;

public interface RecipientService {
    String registerRecipient(Recipient recipient);
    Recipient checkRecipientLogin(String email, String password);
    String submitDonationRequest(DonationRequest donationRequest);
    boolean resetPasswordByEmail(String email, String newPassword);// New method
    boolean changePassword(String email, String currentPassword, String newPassword);
}
