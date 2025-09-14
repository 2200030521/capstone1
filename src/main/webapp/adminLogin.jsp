<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login - Reduce Food Wastage</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/adminLogin.css"> <!-- Linking external CSS -->
    
</head>
<body>
    <!-- Moving food objects background -->
    <div class="food-background">
        <div class="food-item apple"></div>
        <div class="food-item banana"></div>
        <div class="food-item carrot"></div>
    </div>

    <nav class="navbar navbar-expand-lg custom-navbar">
        <a class="navbar-brand" href="foodwastage.jsp">FoodWastage</a> <!-- Changed to .jsp -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item mr-2">
                    <a class="nav-link" href="home.jsp">Home</a> <!-- Changed to .jsp -->
                </li>
                <li class="nav-item mr-2">
                    <a class="nav-link" href="about.jsp">About Us</a> <!-- Changed to .jsp -->
                </li>
                <li class="nav-item mr-2">
                    <a class="nav-link" href="contact.jsp">Contact Us</a> <!-- Changed to .jsp -->
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <div class="jumbotron text-center">
            <h1>Admin Login</h1>
            <p>Please login to access the admin panel.</p>
        </div>
        
        <!-- Admin Login Form -->
        <div class="form-container">
            <h2>Login Form</h2>
            <form action="/loginAdmin" method="post" onsubmit="return validateForm()"> 
    <div class="form-group">
        <label for="username">Username</label>
        <input type="text" class="form-control" id="username" name="username" required>
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
    </div>
    <button type="submit" class="btn btn-primary btn-block">Login</button>
</form>

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
