<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h1 {
            color: #28a745;
            font-size: 2em;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.2em;
            margin-bottom: 30px;
            color: #555;
        }

        .btn {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            font-size: 1em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
        }

        .btn:hover {
            background-color: #218838;
        }

        footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #28a745;
            color: white;
            text-align: center;
            padding: 10px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Thank you for contacting us!</h1>
        <p>We will get back to you soon.</p>
        <a href="home.jsp" class="btn">Back to Home</a>
    </div>

    <footer>
        &copy; 2024 Reduce Food Wastage and Donate. All rights reserved.
    </footer>

</body>
</html>
