package com.klef.jfsd.springboot.repository;

import com.klef.jfsd.springboot.model.DonationRequest;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DonationRequestRepository extends JpaRepository<DonationRequest, Integer> {
 
}
