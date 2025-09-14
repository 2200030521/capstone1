<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Recipients</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #e0f7fa, #b2ebf2); /* Soft gradient background */
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .back-button {
            display: block;
            width: 120px;
            margin: 10px auto;
            text-align: center;
            padding: 10px 20px;
            background-color: #6c757d;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        a, button {
            padding: 5px 10px;
            margin: 0 5px;
            text-decoration: none;
            color: white;
            background-color: #28a745;
            border: none;
            border-radius: 3px;
        }

        button {
            background-color: #dc3545;
        }
    </style>
</head>
<body>
    
    <h1>Recipients</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="recipient" items="${recipients}">
                <tr>
                    <td>${recipient.id}</td>
                    <td>${recipient.name}</td>
                    <td>${recipient.email}</td>
                    <td>${recipient.phone}</td>
                    <td>
                        <a href="updateRecipient/${recipient.id}">Update</a>
                        <form action="deleteRecipient" method="post" style="display:inline;">
                            <input type="hidden" name="id" value="${recipient.id}">
                            <button type="submit" onclick="return confirm('Are you sure?');">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="adminNavbar.jsp" class="back-button">Back</a> <!-- Back button -->
</body>
</html>
