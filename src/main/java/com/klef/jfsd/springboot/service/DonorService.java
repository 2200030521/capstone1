package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Donation;
import com.klef.jfsd.springboot.model.DonationRequest;
import com.klef.jfsd.springboot.model.Donor;
import com.klef.jfsd.springboot.model.DonorHistory;

import java.util.List;

public interface DonorService {
    String donorRegistration(Donor donor);
    Donor validateDonor(String email, String password);
    void saveDonation(Donation donation);
    List<Donation> getDonationsByDonor(int donorId);  // Get donations by donor
    List<Donation> getAllDonations();  // Get all donations made by donors
    List<DonorHistory> getAllDonorHistory();
    List<Donor> getAllDonors();
    List<DonorHistory> getDonorHistory(Long donorId);
    List<DonationRequest> viewDonationRequests();
    String registerDonorAndGenerateCode(Donor donor);
    public void save(Donor donor);
	Donor findByEmail(String email);
}
