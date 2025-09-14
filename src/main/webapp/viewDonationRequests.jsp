<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Donation Requests</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .back-button {
            display: block;
            margin: 10px auto;
            width: 120px;
            text-align: center;
            padding: 10px 20px;
            background-color: #6c757d;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: white;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #007BFF;
            color: white;
            text-transform: uppercase;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        td {
            color: #333;
        }
    </style>
</head>
<body>
    
    <h1>Donation Requests</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Quantity</th>
                <th>Time</th>
                <th>Location</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${donationrequestlist}" var="donationrequest">
                <tr>
                    <td>${donationrequest.id}</td>
                    <td>${donationrequest.name}</td>
                    <td>${donationrequest.phone}</td>
                    <td>${donationrequest.quantity}</td>
                    <td>${donationrequest.time}</td>
                    <td>${donationrequest.location}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="donor.jsp" class="back-button">Back</a> <!-- Back button -->
</body>
</html>
