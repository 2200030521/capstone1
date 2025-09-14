package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Candidate;
import com.klef.jfsd.springboot.model.Donor;
import com.klef.jfsd.springboot.model.DonorHistory;

public interface AdminService {
    Admin validateAdmin(String username, String password);
    void updateAdminPassword(String username, String newPassword);
    List<Donor> viewAllDonors();
}
