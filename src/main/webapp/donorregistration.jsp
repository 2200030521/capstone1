<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor Registration - Reduce Food Wastage</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/donorregistration.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            max-width: 500px;
        }
        .footer {
            background-color: #343a40;
            color: white;
            padding: 10px 0;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="foodwastage.jsp">FoodWastage</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="about.jsp">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact Us</a></li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <div class="jumbotron text-center">
            <h1>Donor Registration</h1>
            <p>Join us in our mission to reduce food wastage!</p>
        </div>
        <div class="form-container">
            <h3>Registration Form</h3>
            <form action="/registerDonor" method="post" onsubmit="return validateForm()">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                    <div class="invalid-feedback">Name is required.</div>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                    <div class="invalid-feedback">Please enter a valid email.</div>
                </div>
                <div class="form-group">
                    <label for="contact">Contact</label>
                    <input type="text" class="form-control" id="contact" name="contact" required pattern="[0-9]{10}">
                    <div class="invalid-feedback">Enter a 10-digit contact number.</div>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required minlength="6">
                    <div class="invalid-feedback">Password must be at least 6 characters long.</div>
                </div>
                <div class="form-group">
                    <label for="location">Location</label>
                    <input type="text" class="form-control" id="location" name="location" required>
                    <div class="invalid-feedback">Location is required.</div>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </form>
            <hr>
            <p class="text-center">Already registered?</p>
            <a href="donorlogin.jsp" class="btn btn-secondary btn-block">Login</a>
        </div>
    </div>

    <footer class="footer text-center mt-5">
        <p>&copy; 2024 FoodWastage. All Rights Reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script>
        function validateForm() {
            // Reset all error states
            document.querySelectorAll('.form-control').forEach(el => el.classList.remove('is-invalid'));

            let isValid = true;

            // Validate name
            if (document.getElementById('name').value.trim() === "") {
                document.getElementById('name').classList.add('is-invalid');
                isValid = false;
            }

            // Validate email
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(document.getElementById('email').value)) {
                document.getElementById('email').classList.add('is-invalid');
                isValid = false;
            }

            // Validate contact
            const contactPattern = /^[0-9]{10}$/;
            if (!contactPattern.test(document.getElementById('contact').value)) {
                document.getElementById('contact').classList.add('is-invalid');
                isValid = false;
            }

            // Validate password
            if (document.getElementById('password').value.length < 6) {
                document.getElementById('password').classList.add('is-invalid');
                isValid = false;
            }

            // Validate location
            if (document.getElementById('location').value.trim() === "") {
                document.getElementById('location').classList.add('is-invalid');
                isValid = false;
            }

            return isValid;
        }
    </script>
</body>
</html>
