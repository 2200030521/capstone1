package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.klef.jfsd.springboot.model.Candidate;
import com.klef.jfsd.springboot.service.CandidateService;

@Controller
public class CandidateController {

    @Autowired
    private CandidateService candidateService;

    // Register a new candidate
    @PostMapping("/registerCandidate")
    public String registerCandidate(Candidate candidate) {
        candidateService.saveCandidate(candidate);
        return "redirect:/viewDonors";
    }

    // Fetch and display all candidates
    @GetMapping("/viewDonors")
    public String viewDonorsPage(Model model) {
        model.addAttribute("candidates", candidateService.getAllCandidates());
        return "viewDonors"; // This corresponds to viewDonors.jsp
    }

    // Fetch candidate details for update
    @GetMapping("/updateCandidate")
    public String updateCandidateForm(@RequestParam("id") int id, Model model) {
        Candidate candidate = candidateService.getCandidateById(id);
        model.addAttribute("candidate", candidate);
        return "updateCandidate"; // This corresponds to updateCandidate.jsp
    }

    // Update candidate details
    @PostMapping("/updateCandidate")
    public String updateCandidate(@ModelAttribute Candidate candidate) {
        candidateService.updateCandidate(candidate);
        return "redirect:/viewDonors";
    }

    // Delete candidate
    @PostMapping("/deleteCandidate")
    public String deleteCandidate(@RequestParam("id") int id) {
        candidateService.deleteCandidateById(id);
        return "redirect:/viewDonors";
    }
}
