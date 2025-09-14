package com.klef.jfsd.springboot.service;
import org.apache.tomcat.util.http.parser.Host;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Donor;
import com.klef.jfsd.springboot.model.DonorHistory;
import com.klef.jfsd.springboot.repository.DonorHistoryRepository;

import java.util.List;

@Service
public class DonorHistoryService {

    // Injecting the DonorHistoryRepository to interact with the database
    @Autowired
    private DonorHistoryRepository donorHistoryRepository;

    // Method to fetch donor history based on donor ID
    public List<DonorHistory> viewAllHosts() {
        // TODO Auto-generated method stub
        return donorHistoryRepository.findAll();
      }
}