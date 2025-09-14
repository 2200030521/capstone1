<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Candidate</title>
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Form container styling */
        .form-container {
            background-color: #fff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        /* Form heading styling */
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        /* Form group styling */
        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        /* Form button styling */
        .form-actions {
            text-align: center;
        }

        .btn-submit {
            background-color: #007bff;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn-submit:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Update Candidate</h1>
        <form action="/updateCandidate" method="post">
            <input type="hidden" name="id" value="${candidate.id}" />
            <input type="hidden" name="password" value="${candidate.password}" />

            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="${candidate.name}" required />
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${candidate.email}" required />
            </div>
            
            <div class="form-group">
                <label for="contact">Contact:</label>
                <input type="text" id="contact" name="contact" value="${candidate.contact}" required />
            </div>
            
            <div class="form-group">
                <label for="location">Location:</label>
                <input type="text" id="location" name="location" value="${candidate.location}" required />
            </div>
            
            <div class="form-actions">
                <button type="submit" class="btn-submit">Update</button>
            </div>
        </form>
    </div>
</body>
</html>
