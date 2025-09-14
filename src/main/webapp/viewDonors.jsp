<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Donors</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #BDE8CA, #A4D7A1);
            margin: 0;
            padding: 20px;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
            font-size: 2.5em;
            font-weight: bold;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 30px auto;
            background-color: #fff;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 15px;
            text-align: center;
            font-size: 16px;
        }

        th {
            background-color: #4CAF50;
            color: #fff;
            font-size: 18px;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        td {
            font-size: 14px;
        }

        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            margin-right: 10px;
        }

        a:hover {
            color: #0056b3;
        }

        button {
            background-color: #dc3545;
            color: #fff;
            border: none;
            padding: 8px 15px;
            cursor: pointer;
            font-size: 14px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #c82333;
        }

        form {
            display: inline;
        }

        .back-button {
            display: block;
            margin: 30px auto;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            font-size: 16px;
            width: 200px;
        }

        .back-button:hover {
            background-color: #45a049;
        }

    </style>
</head>
<body>
    <h1>List of Donors</h1>
    <table>
        <thead>
            <tr>
                <th>Donor ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Contact</th>
                <th>Location</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="candidate" items="${candidates}">
                <tr>
                    <td>${candidate.id}</td>
                    <td>${candidate.name}</td>
                    <td>${candidate.email}</td>
                    <td>${candidate.contact}</td>
                    <td>${candidate.location}</td>
                    <td>
                        <a href="updateCandidate?id=${candidate.id}">Update</a>
                        <form action="deleteCandidate" method="post">
                            <input type="hidden" name="id" value="${candidate.id}" />
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
