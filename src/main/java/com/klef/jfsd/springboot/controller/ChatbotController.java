package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.klef.jfsd.springboot.service.ChatbotService;

@RestController
@RequestMapping("/chatbot")
public class ChatbotController {

    @Autowired
    private ChatbotService chatbotService;

    @PostMapping("/ask")
    public String askBot(@RequestBody String userInput) {
        return chatbotService.getBotResponse(userInput);
    }
}