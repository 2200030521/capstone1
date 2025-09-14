<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor Login - Reduce Food Wastage</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/donorlogin.css"> <!-- Linking external CSS -->
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            max-width: 450px;
            margin-left: auto;
            margin-right: auto;
        }
        .footer {
            background-color: #343a40;
            color: white;
            padding: 10px 0;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg custom-navbar">
        <a class="navbar-brand" href="foodwastage.jsp">FoodWastage</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item mr-2">
                    <a class="nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item mr-2">
                    <a class="nav-link" href="about.jsp">About Us</a>
                </li>
                <li class="nav-item mr-2">
                    <a class="nav-link" href="contact.jsp">Contact Us</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <div class="jumbotron text-center">
            <h1>Donor Login</h1>
            <p>Welcome back! Please login to manage your donations.</p>
        </div>
        
        <!-- Donor Login Form -->
        <div class="form-container">
            <h2>Login</h2>
            <form action="/loginDonor" method="post">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Login</button>
            </form>
            <hr>
            <h5 class="text-center">New User?</h5>
            <a href="donorregistration.jsp" class="btn btn-secondary btn-block">Register</a>
        </div>
    </div>

    <footer class="footer text-center mt-5">
        <p>&copy; 2024 FoodWastage. All Rights Reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
