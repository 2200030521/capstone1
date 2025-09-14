package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Candidate;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer> {
    Admin findByUsernameAndPassword(String username, String password);
    Admin findByUsername(String username);
}
