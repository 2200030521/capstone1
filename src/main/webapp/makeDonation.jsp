<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Make a Donation</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/donor.css"> <!-- Linking external CSS -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
    <div class="container mt-5">
        <div class="jumbotron text-center shadow-lg p-4 mb-5 bg-white rounded">
            <h1>Make a Donation</h1>
            <p>Your contribution can make a significant difference!</p>
        </div>

        <!-- Display success message -->
        <div id="successMessage" class="alert alert-success" style="display:none;" role="alert">
            Donation submitted successfully!
        </div>

        <div class="d-flex justify-content-center">
            <form id="donationForm" class="p-4 shadow-sm bg-light rounded" style="width: 50%;">
                <div class="form-group">
                    <label for="itemName">Item Name:</label>
                    <input type="text" id="itemName" name="itemName" required class="form-control" placeholder="Item Name">
                </div>
                <div class="form-group">
                    <label for="timeOfPreparation">Prep Time (hrs):</label>
                    <input type="number" id="timeOfPreparation" name="timeOfPreparation" required class="form-control" placeholder="Time taken for preparing">
                </div>
                <div class="form-group">
                    <label for="quantity">Quantity (kg):</label>
                    <input type="number" id="quantity" name="quantity" required class="form-control" placeholder="Quantity">
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <textarea id="address" name="address" required class="form-control" rows="2" placeholder="Enter your address"></textarea>
                </div>
                <div class="d-flex justify-content-between">
                    <input type="submit" value="Submit Donation" class="btn btn-success shadow">
                    <button type="button" class="btn btn-secondary shadow" onclick="window.location.href='donor.jsp'">Back</button>
                </div>
            </form>
        </div>
    </div>

    <footer class="text-center mt-5 py-4">
        <p>&copy; 2024 FoodWastage. All Rights Reserved.</p>
    </footer>

    <script>
        $(document).ready(function() {
            // Submit form via AJAX
            $("#donationForm").submit(function(event) {
                event.preventDefault(); // Prevent page refresh
                $.ajax({
                    url: '/submitDonation',  // Controller URL
                    type: 'POST',
                    data: $(this).serialize(),  // Serialize the form data
                    success: function(response) {
                        // Show the success message on the page
                        $("#successMessage").text(response).show();

                        // Clear the form fields after successful submission
                        $("#donationForm")[0].reset();
                    },
                    error: function() {
                        alert("An error occurred. Please try again.");
                    }
                });
            });
        });
    </script>

</body>
</html>
