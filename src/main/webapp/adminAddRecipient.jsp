<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipient Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        /* Background styling */
        body {
            background: url('../Images/donor1.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
        }

        .container {
            margin-top: 10%;
            background-color: rgba(189, 232, 202, 0.9); /* Light green background with transparency */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            max-width: 500px;
        }

        h2 {
            color: #343a40; /* Dark text for the header */
            font-weight: 600;
        }

        .form-group label {
            font-weight: bold;
            color: #343a40;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #ced4da;
            box-shadow: none;
            padding: 10px; /* Reduced padding for smaller size */
            font-size: 14px; /* Smaller font size */
        }

        .btn-primary {
            background-color: #28a745; /* Green button */
            border: none;
            border-radius: 5px;
            padding: 10px;
            font-size: 16px;
        }

        .btn-primary:hover {
            background-color: #218838; /* Darker green on hover */
        }

        .btn-secondary {
            background-color: #6c757d;
            border: none;
            border-radius: 5px;
            padding: 10px;
            font-size: 16px;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
        }

        .text-center a {
            text-decoration: none;
            color: white;
        }

        .btn-block {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Recipient Registration</h2>
        <form action="/registerRecipient" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="text" class="form-control" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Register</button>
        </form>
        <div class="text-center mt-3">
            <a href="adminNavbar.jsp" class="btn btn-secondary">Back to Admin Dashboard</a>
        </div>
    </div>
</body>
</html>
