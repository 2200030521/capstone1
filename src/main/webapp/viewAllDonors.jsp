<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>View All Donors</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 20px;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #333;
            font-size: 2.5em;
            margin-bottom: 20px;
            font-weight: 700;
        }

        table {
            width: 90%;
            margin: 30px auto;
            border-collapse: collapse;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: left;
            font-size: 16px;
        }

        th {
            background-color: #4CAF50;
            color: white;
            font-weight: 600;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        td {
            border-bottom: 1px solid #ddd;
        }

        thead th {
            border-bottom: 2px solid #4CAF50;
        }

        /* Styling for the table rows */
        tr td {
            color: #555;
        }

        /* Hover effects for table rows */
        tr:hover td {
            color: #000;
            transition: 0.3s;
        }

        /* Style for text inside table cells */
        td {
            font-size: 14px;
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
            </tr>
        </thead>
        <tbody>
            <c:forEach var="donor" items="${donorslist}">
                <tr>
                    <td>${donor.id}</td>
                    <td>${donor.name}</td>
                    <td>${donor.email}</td>
                    <td>${donor.contact}</td>
                    <td>${donor.location}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
