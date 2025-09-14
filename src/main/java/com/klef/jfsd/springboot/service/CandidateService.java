package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Candidate;
import com.klef.jfsd.springboot.repository.CandidateRepository;

@Service
public class CandidateService {

    @Autowired
    private CandidateRepository candidateRepository;

    // Save a new candidate
    public Candidate saveCandidate(Candidate candidate) {
        return candidateRepository.save(candidate);
    }

    // Fetch all candidates
    public List<Candidate> getAllCandidates() {
        return (List<Candidate>) candidateRepository.findAll();
    }

    // Fetch a candidate by ID
    public Candidate getCandidateById(int id) {
        Optional<Candidate> candidate = candidateRepository.findById(id);
        return candidate.orElse(null);
    }

    // Update candidate details
    public Candidate updateCandidate(Candidate candidate) {
        return candidateRepository.save(candidate); // Save updates the record if it exists
    }

    // Delete a candidate by ID
    public void deleteCandidateById(int id) {
        candidateRepository.deleteById(id);
    }
}
