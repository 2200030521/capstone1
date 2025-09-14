<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor Change Password</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/adminchangePassword.css"> <!-- Linking external CSS -->
</head>
<body>
    <div class="container mt-5">
        <div class="card change-password-card">
            <div class="card-body">
                <h2 class="card-title text-center">Change Password</h2>
                <form action="/donorchangePassword" method="post"> <!-- JSP file name -->
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="currentPassword">Current Password</label>
                        <input type="password" class="form-control" id="currentPassword" name="currentPassword" required>
                    </div>
                    <div class="form-group">
                        <label for="newPassword">New Password</label>
                        <input type="password" class="form-control" id="newPassword" name="newPassword" required>
                    </div>
                    <div class="form-group">
                        <label for="confirmPassword">Confirm New Password</label>
                        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                    </div>
                    <button type="submit" class="btn btn-success btn-block">Change Password</button>
                </form>
                <a href="donor.jsp" class="btn btn-secondary btn-block mt-3">Go Back to Dashboard</a> <!-- JSP file name -->
            </div>
            <!-- Display messages -->
                <c:if test="${not empty message}">
                    <div class="alert alert-success mt-3">${message}</div>
                </c:if>
                <c:if test="${not empty error}">
                    <div class="alert alert-danger mt-3">${error}</div>
                </c:if>
        </div>
    </div>
</body>
</html>
