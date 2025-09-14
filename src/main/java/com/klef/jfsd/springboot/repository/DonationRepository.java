package com.klef.jfsd.springboot.repository;

import com.klef.jfsd.springboot.model.Donation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DonationRepository extends JpaRepository<Donation, Integer> {
    List<Donation> findByDonorId(int donor_id);  // Fetch donations by donor
}
