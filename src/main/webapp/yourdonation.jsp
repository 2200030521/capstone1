<!DOCTYPE html>
<html>
<head>
    <title>Your Donations</title>
    <style>
        /* Overall body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Heading style */
        h1 {
            text-align: center;
            color: #4CAF50;
            margin-top: 30px;
            font-size: 36px;
        }

        /* Table container styling */
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        /* Table header styling */
        th {
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            text-align: left;
            font-size: 16px;
        }

        /* Table data styling */
        td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            font-size: 14px;
        }

        /* Row hover effect */
        tr:hover {
            background-color: #f1f1f1;
        }

        /* Styling for "No donations available" message */
        .no-donations {
            text-align: center;
            font-size: 18px;
            color: #ff6347;
            margin-top: 30px;
        }

        /* General styling for messages */
        p {
            text-align: center;
            font-size: 18px;
            color: #555;
        }
    </style>
</head>
<body>
    <h1>Your Donations</h1>
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
        <p class="no-donations">You haven't made any donations yet.</p>
    </c:if>
   
</body>
</html>
