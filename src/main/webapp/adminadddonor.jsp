<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Donor - Reduce Food Wastage</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/adminadddonor.css">
</head>
<body>
    <div class="container mt-5">
        <div class="form-container">
            <h2 class="text-center">Donor Registration</h2>
            <form action="/registerCandidate" method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="contact">Contact</label> <!-- Changed "phone" to "contact" -->
                    <input type="text" class="form-control" id="contact" name="contact" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="form-group">
                    <label for="location">Location</label>
                    <input type="text" class="form-control" id="location" name="location" required>
                </div>
                <button type="submit" class="btn btn-submit btn-block">Register</button>
            </form>
            <hr>
            <div class="text-center">
                <a href="adminNavbar.jsp" class="btn btn-secondary btn-block">Back to Admin</a>
            </div>
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
