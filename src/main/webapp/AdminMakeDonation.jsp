<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Make a Donation - Reduce Food Wastage</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/adminmakedonation.css"> <!-- Linking external CSS -->
</head>
<body>
    <div class="container mt-5">
        <div class="jumbotron text-center">
            <h1>Make a Donation</h1>
            <p>Your contribution can make a significant difference!</p>
        </div>

        <form action="submitDonation" method="post" class="donation-form">
            <div class="form-group">
                <label for="itemName">Item Name:</label>
                <input type="text" id="itemName" name="itemName" required class="form-control" placeholder="e.g., Apples">
            </div>
            <div class="form-group">
                <label for="timeOfPreparation">Prep Time (hrs):</label>
                <input type="number" id="timeOfPreparation" name="timeOfPreparation" required class="form-control" placeholder="e.g., 2">
            </div>
            <div class="form-group">
                <label for="quantity">Quantity (kg):</label>
                <input type="number" id="quantity" name="quantity" required class="form-control" placeholder="e.g., 5">
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <textarea id="address" name="address" required class="form-control" rows="2" placeholder="Enter your address"></textarea>
            </div>
            <input type="submit" value="Submit Donation" class="btn btn-success btn-lg">
        </form>

        <!-- Button to go back to the admin navbar page -->
        <a href="adminNavbar.jsp" class="btn btn-secondary btn-lg mt-3">Back to Admin Navbar</a> <!-- Changed to .jsp -->
    </div>

    <footer class="text-center mt-5 py-4">
        <p>&copy; 2024 FoodWastage. All Rights Reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
