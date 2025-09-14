<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chatbot</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* General Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f7; /* Light gray background */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #2c3e50; /* Dark text color */
        }

        h2 {
            text-align: center;
            color: #8e44ad; /* Rich purple for chatbot label */
            font-size: 2.5rem;
            margin-bottom: 10px;
        }

        #chatbox-container {
            width: 60%;
            max-width: 800px;
            background: #ffffff; /* White background for container */
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1); /* Soft shadow */
            overflow: hidden;
            display: flex;
            flex-direction: column;
            border: 2px solid #8e44ad; /* Border color for chatbot box */
        }

        #chatbox {
            width: 100%;
            height: 450px;
            padding: 20px;
            overflow-y: auto;
            background-color: #ecf0f1; /* Light gray background for chatbox */
            color: #2c3e50;
            box-sizing: border-box;
            border-bottom: 1px solid #ddd; /* Subtle separator */
        }

        #chatbox p {
            margin: 15px 0;
            padding: 12px 18px;
            border-radius: 10px;
            background-color: #e1f5fe; /* Light blue for user messages */
            color: #2c3e50;
            line-height: 1.5;
            box-sizing: border-box;
        }

        #chatbox p.bot-message {
            background-color: #fff3e0; /* Soft peachy color for bot's messages */
            text-align: right;
        }

        #chatbox p.user-message {
            background-color: #e1f5fe; /* Light blue for user messages */
            text-align: left;
        }

        #input-container {
            display: flex;
            align-items: center;
            padding: 15px;
            background: #ffffff; /* White background for input */
            border-top: 1px solid #ddd;
        }

        #user-input {
            flex: 1;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1.1em;
            margin-right: 15px;
            background-color: #ffffff;
            color: #2c3e50;
            outline: none;
        }

        #user-input:focus {
            border-color: #3498db;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.6);
        }

        #send-btn {
            padding: 12px 20px;
            background: #3498db; /* Soft blue button background */
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.1em;
            cursor: pointer;
            transition: background 0.3s ease-in-out;
        }

        #send-btn:hover {
            background: #2980b9; /* Darker blue on hover */
        }

        #send-btn:active {
            background: #1f6fa1; /* Even darker blue on click */
        }

        /* Back button centered at bottom */
        #back-btn {
            padding: 10px 20px;
            background: #27ae60; /* Soft green background */
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1em;
            cursor: pointer;
            transition: background 0.3s;
            margin-top: 20px;
            margin-left: auto;
            margin-right: auto;
            display: block; /* Center horizontally */
        }

        #back-btn:hover {
            background: #2ecc71; /* Slightly brighter green on hover */
        }

        #back-btn:active {
            background: #16a085; /* Even darker green on click */
        }
    </style>
</head>
<body>
    <div id="chatbox-container">
        <h2>Chatbot</h2>
        <div id="chatbox"></div>
        <div id="input-container">
            <input type="text" id="user-input" placeholder="Type your message..." />
            <button id="send-btn" onclick="sendMessage()">Send</button>
        </div>
        <!-- Back button at the bottom, centered -->
        <button id="back-btn" onclick="window.history.back()">Back</button>
    </div>

    <script>
        function sendMessage() {
            var userInput = document.getElementById("user-input").value;
            var chatbox = document.getElementById("chatbox");

            if (userInput.trim() === "") {
                return; // Avoid sending empty messages
            }

            // Display user message
            chatbox.innerHTML += "<p class='user-message'><strong>You:</strong> " + userInput + "</p>";

            // Send user input to backend API
            fetch('<%= request.getContextPath() %>/chatbot/ask', { // Context Path for JSP
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(userInput),
            })
            .then(response => response.text())
            .then(data => {
                // Display chatbot response
                chatbox.innerHTML += "<p class='bot-message'><strong>Bot:</strong> " + data + "</p>";
                chatbox.scrollTop = chatbox.scrollHeight; // Scroll to the latest message
            })
            .catch(error => {
                console.error('Error:', error);
                chatbox.innerHTML += "<p class='bot-message'><strong>Bot:</strong> An error occurred. Please try again later.</p>";
            });

            // Clear input field
            document.getElementById("user-input").value = '';
        }
    </script>
</body>
</html>
