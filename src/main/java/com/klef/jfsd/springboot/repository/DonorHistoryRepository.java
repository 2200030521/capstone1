package com.klef.jfsd.springboot.repository;

import com.klef.jfsd.springboot.model.DonorHistory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface DonorHistoryRepository extends JpaRepository<DonorHistory, Integer> {
	 
}
