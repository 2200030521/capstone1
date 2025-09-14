package com.klef.jfsd.springboot.service;

import org.springframework.stereotype.Service;

@Service
public class ChatbotService {

    public String getBotResponse(String userInput) {
        // Convert input to lowercase for consistent comparison
        userInput = userInput.toLowerCase();

        // Check for specific questions and respond
        if (userInput.contains("hello")) {
            return "Hi there! How can I assist you today?";
        } else if (userInput.contains("bye")) {
            return "Goodbye! Have a great day!";
        } else if (userInput.contains("what is food donation")) {
            return "Food donation is the act of giving surplus or extra food to those in need, helping to reduce food waste and fight hunger.";
        } else if (userInput.contains("how much percentage of food is wasted")) {
            return "According to the United Nations, approximately 17% of global food production is wasted annually. This includes 11% from households, 5% from food services, and 2% from retail.";
        } else if (userInput.contains("how food is donated through different platforms")) {
            return "Food can be donated through various platforms like food banks, charitable organizations, mobile apps, and community kitchens. These platforms connect donors with recipients efficiently.";
        }else if (userInput.contains("what is this project about")) {
            return "This project aims to reduce food wastage and improve food security by connecting donors with recipients and analyzing data for better resource management.";
        }else if (userInput.contains("who are the stakeholders")) {
            return "The stakeholders are Admin, Food Donors, Recipient Organizations, and Data Analysts.";
        }  else if (userInput.contains("what does the admin do")) {
            return "The Admin manages the platform, approves users, and oversees the donation process.";
        } else if (userInput.contains("role of food donor")) {
            return "Food Donors share surplus food details and schedule donations for recipient organizations.";
        }else if (userInput.contains("tasks of recipient organization")) {
            return "They accept food donations, distribute them, and report usage statistics.";
        } else if (userInput.contains("features of this platform")) {
            return "Key features include tracking donations, fostering collaboration between donors and recipients.";
        } else if (userInput.contains("how does this project reduce waste")) {
            return "It connects donors and recipients efficiently, ensuring surplus food is utilized instead of wasted.";
        }else if (userInput.contains("what technologies are used")) {
            return "The platform uses Java (Spring Boot), JSP, HTML, CSS, MySQL, and Bootstrap.";
        } else if (userInput.contains("how does this project help food security")) {
            return "It ensures surplus food reaches those in need, reducing hunger and improving overall access to food.";
        }  else if (userInput.contains("how to contribute to the project")) {
            return "Contributions can include code enhancements, sharing feedback, or suggesting new features.";
        }
        else {
            return "I'm sorry, I don't understand that. Can you please rephrase?";
        }
    }
}