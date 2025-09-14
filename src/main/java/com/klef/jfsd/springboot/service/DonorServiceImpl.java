package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Donation;
import com.klef.jfsd.springboot.model.DonationRequest;
import com.klef.jfsd.springboot.model.Donor;
import com.klef.jfsd.springboot.model.DonorHistory;
import com.klef.jfsd.springboot.repository.DonationRepository;
import com.klef.jfsd.springboot.repository.DonationRequestRepository;
import com.klef.jfsd.springboot.repository.DonorHistoryRepository;
import com.klef.jfsd.springboot.repository.DonorRepository;

import java.util.List;
import java.util.Random;

@Service
public class DonorServiceImpl implements DonorService {

    @Autowired
    private DonorRepository donorRepository;

    @Autowired
    private DonationRepository donationRepository;
    
    @Autowired
    private DonationRequestRepository donationRequestRepository;

    @Autowired
    private DonorHistoryRepository donorHistoryRepository;

    @Override
    public String donorRegistration(Donor donor) {
        donorRepository.save(donor);
        DonorHistory donorHistory = new DonorHistory(donor); // Use constructor for easy setup
        donorHistoryRepository.save(donorHistory);
        return "Donor saved successfully";
    }

    @Override
    public Donor validateDonor(String email, String password) {
        return donorRepository.findByEmailAndPassword(email, password);
    }

    @Override
    public void saveDonation(Donation donation) {
        donationRepository.save(donation);
    }

    @Override
    public List<Donation> getDonationsByDonor(int donorId) {
        return donationRepository.findByDonorId(donorId);
    }

    @Override
    public List<Donation> getAllDonations() {
        return donationRepository.findAll();  // Fetch all donations
    }

    @Override
    public List<DonorHistory> getAllDonorHistory() {
        return donorHistoryRepository.findAll();
    }

    @Override
    public List<Donor> getAllDonors() {
        return donorRepository.findAll();
    }

    @Override
    public List<DonorHistory> getDonorHistory(Long donorId) {
        return donorHistoryRepository.findAll();
    }

    @Override
    public List<DonationRequest> viewDonationRequests() {
        List<DonationRequest> requests = donationRequestRepository.findAll();
        System.out.println("Fetched Donation Requests: " + requests);
        return requests;
    }
    @Override
    public String registerDonorAndGenerateCode(Donor donor) {
        String verificationCode = generateVerificationCode();
        donor.setVerificationCode(verificationCode);
        donorRepository.save(donor);
        return verificationCode;
    }
    private String generateVerificationCode() {
        Random random = new Random();
        int code = 100000 + random.nextInt(900000); // Generates a 6-digit code
        return String.valueOf(code);
    }

    public void save(Donor donor) {
        donorRepository.save(donor);
    }

    public Donor findByEmail(String email) {
        return donorRepository.findByEmail(email);
    }
    
    
}
