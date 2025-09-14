<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipient Dashboard - Reduce Food Wastage</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/recipient.css"> <!-- Linking external CSS -->
</head>
<body>
    <div class="d-flex flex-column min-vh-100"> <!-- Flexbox container -->
        <nav class="navbar navbar-expand-lg custom-navbar">
            <a class="navbar-brand">ZeroWasteHub</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto"> <!-- Align items to the right -->
                <li class="nav-item">
                        <a class="nav-link" href="recipientchangePassword.jsp">ChangePassword</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="home.jsp">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container mt-5 text-center flex-grow-1"> <!-- Flex-grow to push footer down -->
            <div class="card custom-card mx-auto p-4">
                <h1 class="card-title">Welcome, Recipient!</h1>
                <p>Your efforts help in reducing food wastage. Together, we can make a difference!</p>

                <div class="d-flex justify-content-center mt-4">
                    <a href="requestDonation.jsp" class="btn btn-request mx-2">Request Donation</a>
                    <a href="recipientdonations.jsp" class="btn btn-view mx-2">View Donations</a>
                    <a href="recipientfeedback.jsp" class="btn btn-view mx-2">Give Feedback</a>
                </div>
            </div>
        </div>

        <footer class="text-center mt-5 py-4">
            <p>&copy; 2024 FoodWastage. All Rights Reserved.</p>
        </footer>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
