<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reduce Food Wastage and Donate</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f9fc;
            margin: 0;
            padding: 0;
            color: #333;
        }
        header, footer {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 20px;
        }
        header h1, footer p {
            margin: 0;
        }
        nav {
            text-align: center;
            margin-top: 10px;
        }
        nav a {
            text-decoration: none;
            margin: 0 15px;
            color: white;
            font-size: 16px;
            font-weight: bold;
        }
        nav a:hover {
            text-decoration: underline;
        }
        section {
            padding: 20px;
            margin: auto;
            max-width: 1200px;
        }
        .info-box, .testimonial {
            background: white;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            padding: 20px;
        }
        .testimonial {
            background: #4CAF50;
            color: white;
        }
        .chart-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }
        .card-custom {
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            overflow: hidden;
            margin: 15px;
            background-color: white;
        }
        .card-custom:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
        }
        .chart-card canvas {
            padding: 10px;
        }
        .testimonial p {
            font-size: 18px;
        }
    </style>
</head>
<body>

<header>
    <h1>Reduce Food Wastage and Donate</h1>
    <nav>
        <a href="#overview">Overview</a>
        <a href="#charts">Statistics</a>
        <a href="#impact">Impact</a>
        <a href="#testimonials">Testimonials</a>
    </nav>
</header>

<section id="overview">
    <h2>Welcome to the Food Donation Initiative</h2>
    <p>Food waste is a significant global issue, and our initiative is dedicated to reducing it through efficient donation channels. By connecting donors with organizations in need, we aim to combat hunger while reducing the environmental impact of food wastage.</p>
    <div class="info-box">
        <h3>Why Donate Food?</h3>
        <p>Food donations play a critical role in reducing hunger, food waste, and the environmental toll of wasted resources. By donating food, individuals and organizations can help provide sustenance to those in need, promote sustainable practices, and minimize the carbon footprint caused by food waste.</p>
        <ul>
           
            <li><strong>Social Responsibility:</strong> By donating food, you can help fight hunger and improve food security for marginalized communities.</li>
            <li><strong>Economic Impact:</strong> Donating surplus food also reduces the economic losses caused by wasted food, benefiting businesses, communities, and the economy as a whole.</li>
        </ul>
    </div>
</section>
<section id="charts">
    <h2>Food Donation Statistics</h2>
    <p>The following charts illustrate the types of food donations being made and their impact. Understanding these statistics helps us see where the greatest needs lie and how much food is being distributed to those who need it most.</p>
    <div class="chart-grid">
        <div class="chart-card">
            <canvas id="barChart"></canvas>
        </div>
        <div class="chart-card">
            <canvas id="pieChart"></canvas>
        </div>
        <div class="chart-card">
            <canvas id="lineChart"></canvas>
        </div>
    </div>
</section>

<section id="impact">
    <h2>The Impact of Food Wastage</h2>
    <div class="card-custom">
        <div class="card-body">
            <h5 class="card-title">Economic Loss</h5>
            <p>Globally, food wastage costs an estimated $1 trillion every year. The loss occurs across the entire food supply chain, from production to consumption. By diverting food from landfills and redistributing it, we can reduce this economic loss and provide nourishment to those who need it most.</p>
        </div>
    </div>
    <div class="card-custom">
        <div class="card-body">
            <h5 class="card-title">Social Responsibility</h5>
            <p>Every year, billions of people struggle with food insecurity, while tons of food go to waste. Donating surplus food not only addresses hunger but also helps in building a more equitable and sustainable food system for everyone.</p>
        </div>
    </div>
</section>

<section id="testimonials">
    <h2>What People Say</h2>
    <div class="testimonial">
        <p>"Thanks to this initiative, we’ve been able to feed hundreds of families who were struggling to make ends meet. It’s an amazing way to create change in our community!"</p>
        <p>- Community Leader, Local Nonprofit</p>
    </div>
    <div class="testimonial">
        <p>"This platform has transformed how we manage surplus food. Instead of throwing away perfectly good items, we can ensure they reach those in need. The impact has been phenomenal!"</p>
        <p>- Food Donor, Restaurant Owner</p>
    </div>
    <div class="testimonial">
        <p>"Being part of this initiative has made me feel that I'm contributing towards a better world. It’s great to see how even small contributions can make a big difference!"</p>
        <p>- Volunteer, Local Charity</p>
    </div>
</section>

<%
    String[] labels = {"Rice", "Wheat", "Vegetables", "Fruits", "Dairy"};
    int[] data = {50, 30, 40, 60, 20};
    String labelsJson = String.join("\", \"", labels);
    StringBuilder dataJson = new StringBuilder();
    for (int i = 0; i < data.length; i++) {
        dataJson.append(data[i]);
        if (i < data.length - 1) {
            dataJson.append(", ");
        }
    }
%>

<script>
    const labels = ["<%= labelsJson %>"];
    const data = [<%= dataJson.toString() %>];

    // Bar Chart
    const barCtx = document.getElementById('barChart').getContext('2d');
    new Chart(barCtx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                label: 'Food Donations (kg)',
                data: data,
                backgroundColor: ['rgba(255,99,132,0.2)', 'rgba(54,162,235,0.2)', 'rgba(255,206,86,0.2)', 'rgba(75,192,192,0.2)', 'rgba(153,102,255,0.2)'],
                borderColor: ['rgba(255,99,132,1)', 'rgba(54,162,235,1)', 'rgba(255,206,86,1)', 'rgba(75,192,192,1)', 'rgba(153,102,255,1)'],
                borderWidth: 1
            }]
        },
        options: {scales: {y: {beginAtZero: true}}}
    });

    // Pie Chart
    const pieCtx = document.getElementById('pieChart').getContext('2d');
    new Chart(pieCtx, {
        type: 'pie',
        data: {
            labels: labels,
            datasets: [{
                label: 'Food Donations (kg)',
                data: data,
                backgroundColor: ['rgba(255,99,132,0.6)', 'rgba(54,162,235,0.6)', 'rgba(255,206,86,0.6)', 'rgba(75,192,192,0.6)', 'rgba(153,102,255,0.6)']
            }]
        }
    });
    // Line Chart
    const lineCtx = document.getElementById('lineChart').getContext('2d');
    new Chart(lineCtx, {
        type: 'line',
        data: {
            labels: labels,
            datasets: [{
                label: 'Food Donations (kg)',
                data: data,
                borderColor: 'rgba(75,192,192,1)',
                backgroundColor: 'rgba(75,192,192,0.2)',
                fill: true,
                tension: 0.4
            }]
        }
    });
</script>

<footer>
    <p>© 2024 Reduce Food Wastage Initiative | All Rights Reserved</p>
</footer>
</body>
</html>