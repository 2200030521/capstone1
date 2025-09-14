<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Recipient</title>
    <style>
        /* Clean Background Gradient */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #a8e6cf, #d4f1d7); /* Light pastel green gradient */
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Center the form and apply a clean style */
        form {
            width: 100%;
            max-width: 600px;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        /* Form header */
        h1 {
            text-align: center;
            color: #333;
            font-size: 28px;
            margin-bottom: 20px;
        }

        /* Label Styling */
        label {
            font-weight: bold;
            color: #333;
            margin-bottom: 5px;
            display: block;
            font-size: 16px;
        }

        /* Input fields */
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        /* Input focus effect */
        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #28a745;
            outline: none;
        }

        /* Button Styling */
        button {
            width: 100%;
            padding: 14px;
            background-color: #28a745; /* Green button */
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        /* Button hover effect */
        button:hover {
            background-color: #218838;
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            form {
                padding: 20px;
            }

            h1 {
                font-size: 24px;
            }

            input[type="text"],
            input[type="email"],
            input[type="password"] {
                font-size: 14px;
            }

            button {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <form action="/updateRecipient" method="post">
        <h1>Update Recipient</h1>
        <input type="hidden" name="id" value="${recipient.id}" />
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${recipient.name}" required />

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${recipient.email}" required />

        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" value="${recipient.phone}" required />

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" value="${recipient.password}" required />

        <button type="submit">Update Recipient</button>
    </form>
</body>
</html>
