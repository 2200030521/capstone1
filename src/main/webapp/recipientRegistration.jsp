<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipient Registration - Reduce Food Wastage</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/recipientRegistration.css"> <!-- Linking external CSS -->
    <script>
        // Client-side form validation
        function validateForm() {
            let isValid = true;

            // Clear previous error messages
            document.getElementById('nameError').innerHTML = '';
            document.getElementById('emailError').innerHTML = '';
            document.getElementById('phoneError').innerHTML = '';
            document.getElementById('passwordError').innerHTML = '';

            // Validate Name
            const name = document.getElementById('name').value;
            if (name.length < 3 || name.length > 50) {
                document.getElementById('nameError').innerHTML = 'Name should be between 2 and 50 characters.';
                isValid = false;
            }

            // Validate Email
            const email = document.getElementById('email').value;
            const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            if (!emailPattern.test(email)) {
                document.getElementById('emailError').innerHTML = 'Invalid email format.';
                isValid = false;
            }

            // Validate Phone
            const phone = document.getElementById('phone').value;
            const phonePattern = /^[0-9]{10}$/;
            if (!phonePattern.test(phone)) {
                document.getElementById('phoneError').innerHTML = 'Phone number should be between 10 and 15 digits.';
                isValid = false;
            }

            // Validate Password
            const password = document.getElementById('password').value;
            if (password.length < 6) {
                document.getElementById('passwordError').innerHTML = 'Password should be at least 6 characters long.';
                isValid = false;
            }

            return isValid;
        }
    </script>
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
            <h1>Welcome to the Recipient Registration</h1>
            <p>Join us in our mission to reduce food wastage!</p>
        </div>
        
        <!-- Recipient Registration Form -->
        <div class="form-container">
            <h2>Recipient Registration Form</h2>
            <form action="/registerrecipient" method="post" onsubmit="return validateForm()">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" value="" required>
                    <div id="nameError" class="text-danger"></div>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" value="" required>
                    <div id="emailError" class="text-danger"></div>
                </div>

                <div class="form-group">
                    <label for="phone">Phone</label>
                    <input type="text" class="form-control" id="phone" name="phone" value="" required>
                    <div id="phoneError" class="text-danger"></div>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                    <div id="passwordError" class="text-danger"></div>
                </div>

                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </form>
            <hr>
            <h5 class="text-center">Already Registered?</h5>
            <a href="recipientlogin.jsp" class="text-center">Login here</a>
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
