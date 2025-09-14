package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.AdminRecipient;
@Repository
public interface AdminRecipientRepository extends JpaRepository<AdminRecipient, Integer> {
}
