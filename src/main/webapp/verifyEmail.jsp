<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email Verification</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa; /* Light grey background */
        }
        .verification-container {
            margin-top: 5%;
            padding: 30px;
            background-color: #BDE8CA; /* Light green background */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .verification-header {
            background-color: #343a40; /* Black background */
            color: white;
            padding: 15px;
            border-radius: 10px 10px 0 0;
        }
        .form-group label {
            font-weight: bold;
        }
        .btn-primary {
            background-color: #28a745; /* Green button */
            border: none;
        }
        .btn-primary:hover {
            background-color: #218838; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="verification-container">
            <div class="verification-header">
                <h2>Email Verification</h2>
            </div>
            <form action="/verifyCode" method="post">
                <div class="form-group mt-3">
                    <label for="verificationCode">Enter Verification Code</label>
                    <input type="text" class="form-control" id="verificationCode" name="verificationCode" required>
                </div>
                <button type="submit" class="btn btn-primary btn-block mt-4">Verify</button>
            </form>
        </div>
    </div>
</body>
</html>
