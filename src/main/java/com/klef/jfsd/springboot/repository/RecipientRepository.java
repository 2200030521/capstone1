package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.klef.jfsd.springboot.model.Recipient;

public interface RecipientRepository extends JpaRepository<Recipient, Integer> {
    // Custom query method to find a recipient by email
    Recipient findByEmail(String email);
}
