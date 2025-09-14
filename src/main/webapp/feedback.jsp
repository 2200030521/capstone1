<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/donor.css"> <!-- Linking external CSS -->
</head>
<body class="d-flex flex-column min-vh-100"> <!-- Add flexbox for full height -->
    <nav class="navbar navbar-expand-lg custom-navbar">
        <a class="navbar-brand">ZeroWasteHub</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto"> <!-- Use ml-auto to align items to the right -->
                <li class="nav-item">
                    <a class="nav-link" href="donor.jsp">Logout</a> <!-- Logout link -->
                </li>
            </ul>
        </div>
    </nav>

    <div class="container flex-grow-1 mt-5">
        <div class="jumbotron text-center">
            <h1>Feedback</h1>
            <p>We appreciate your thoughts and suggestions!</p>
        </div>

        <div class="text-center mb-4">
            <h2>Submit Your Feedback</h2>
        </div>

        <div class="d-flex justify-content-center">
            <div class="card" style="width: 60%;">
                <div class="card-body">
                    <h5 class="card-title text-center">Provide Feedback</h5>
                    <form action="/submitFeedback" method="post">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>

                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>

                        <div class="form-group">
                            <label for="feedbackMessage">Feedback Message</label>
                            <textarea class="form-control" id="feedbackMessage" name="feedbackMessage" rows="4" required></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary btn-block">Submit Feedback</button>
                    </form>

                    <div class="mt-3 text-center">
                        <span th:text="${message}"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="text-center mt-5 py-4">
        <p>&copy; 2024 FoodWastage. All Rights Reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
