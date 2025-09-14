package com.klef.jfsd.springboot.repository;

import com.klef.jfsd.springboot.model.Donation;
import com.klef.jfsd.springboot.model.Donor;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DonorRepository extends JpaRepository<Donor, Integer> {
	   Donor findByEmailAndPassword(String email, String password);
//	   List<Donor> findAll();

	Donor findByEmail(String email);
	  
}
