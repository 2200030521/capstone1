<!DOCTYPE html>
<html>
<head>
    <title>View Donations</title>
    <style>
        /* Overall body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        /* Heading style */
        h1 {
            text-align: center;
            color: #333;
            margin-top: 20px;
        }

        /* Table container styling */
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* Table header styling */
        th {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            text-align: left;
        }

        /* Table data styling */
        td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        /* Row hover effect */
        tr:hover {
            background-color: #f5f5f5;
        }

        /* Styling for "No donations available" message */
        .no-donations {
            text-align: center;
            font-size: 18px;
            color: #ff6347;
            margin-top: 30px;
        }

        /* Button style for any future add buttons or links */
        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin: 20px auto;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            text-align: center;
        }

        .btn:hover {
            background-color: #45a049;
        }

        /* Back button styling */
        .back-btn-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .back-btn {
            padding: 10px 20px;
            background-color: #555;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }

        .back-btn:hover {
            background-color: #444;
        }
    </style>
</head>
<body>
    <h1>Available Donations</h1>
    <c:if test="${not empty donations}">
        <table>
            <thead>
                <tr>
                    <th>Item Name</th>
                    <th>Time of Preparation</th>
                    <th>Quantity</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="donation" items="${donations}">
                    <tr>
                        <td>${donation.itemName}</td>
                        <td>${donation.timeOfPreparation}</td>
                        <td>${donation.quantity}</td>
                        <td>${donation.address}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
    <c:if test="${empty donations}">
        <p class="no-donations">No donations available at this time.</p>
    </c:if>

    <!-- Centered Back Button to Recipient Dashboard -->
    <div class="back-btn-container">
        <a href="recipient.jsp" class="back-btn">Back</a>
    </div>
</body>
</html>
