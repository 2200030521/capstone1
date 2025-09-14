<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Statistics</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f1f5f9; /* Light gray background for better contrast */
            margin: 0;
            padding: 0;
            color: #333;
        }
        h1 {
            text-align: center;
            color: #2d3e50;
            margin-top: 50px;
            font-size: 2.5em;
        }
        .chart-container {
            width: 60%; /* Reduced width of chart containers */
            margin: 40px auto;
            padding: 15px;
            border-radius: 10px;
            background-color: #ffffff;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        .chart-container h3 {
            text-align: center;
            color: #2d3e50;
            margin-bottom: 15px;
            font-size: 1.3em; /* Reduced font size for headings */
        }

        /* Make charts responsive for smaller screens */
        @media screen and (max-width: 768px) {
            .chart-container {
                width: 80%;
                padding: 10px;
            }
            h1 {
                font-size: 2em; /* Adjust font size for small screens */
            }
            .chart-container h3 {
                font-size: 1.2em; /* Adjust font size for chart titles */
            }
        }

        /* Custom chart container to maintain aspect ratio */
        .chart-wrapper {
            width: 100%;
            height: 250px; /* Reduced height for charts */
            position: relative;
        }

        /* Custom colors for charts */
        .bar-chart {
            background-color: #3498db; /* Light blue */
        }
        .pie-chart {
            background-color: #e74c3c; /* Red */
        }
        .line-chart {
            background-color: #2ecc71; /* Green */
        }
    </style>
</head>
<body>
    <h1>Admin Statistics</h1>

    <div class="chart-container">
        <h3>Donation Bar Chart</h3>
        <div class="chart-wrapper">
            <canvas id="barChart"></canvas>
        </div>
    </div>
    <div class="chart-container">
        <h3>Donation Pie Chart</h3>
        <div class="chart-wrapper">
            <canvas id="pieChart"></canvas>
        </div>
    </div>
    <div class="chart-container">
        <h3>Donation Line Chart</h3>
        <div class="chart-wrapper">
            <canvas id="lineChart"></canvas>
        </div>
    </div>

    <script>
        // Static data for the reports
        var donationData = {
            labels: ['Rice', 'Wheat', 'Sugar', 'Oil', 'Spices'],  // Example items donated
            datasets: [{
                label: 'Total Donations (kg)',
                data: [500, 1200, 800, 150, 300],  // Example quantities donated in kg
                backgroundColor: [
                    'rgba(52, 152, 219, 0.6)',   // Light blue for bar chart
                    'rgba(231, 76, 60, 0.6)',    // Red for pie chart
                    'rgba(46, 204, 113, 0.6)',   // Green for line chart
                    'rgba(155, 89, 182, 0.6)',   // Purple for another chart item
                    'rgba(241, 196, 15, 0.6)'    // Yellow for another chart item
                ],
                borderColor: [
                    'rgba(52, 152, 219, 1)', 
                    'rgba(231, 76, 60, 1)', 
                    'rgba(46, 204, 113, 1)', 
                    'rgba(155, 89, 182, 1)', 
                    'rgba(241, 196, 15, 1)'
                ],
                borderWidth: 1
            }]
        };

        // Bar chart
        var ctxBar = document.getElementById('barChart').getContext('2d');
        new Chart(ctxBar, {
            type: 'bar',
            data: donationData,
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true,
                        ticks: {
                            stepSize: 200
                        }
                    }
                }
            }
        });

        // Pie chart
        var ctxPie = document.getElementById('pieChart').getContext('2d');
        new Chart(ctxPie, {
            type: 'pie',
            data: donationData,
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                        labels: {
                            fontColor: '#2d3e50',
                        }
                    },
                    tooltip: {
                        callbacks: {
                            label: function(tooltipItem) {
                                return tooltipItem.label + ": " + tooltipItem.raw + " kg";
                            }
                        }
                    }
                }
            }
        });

        // Line chart
        var ctxLine = document.getElementById('lineChart').getContext('2d');
        new Chart(ctxLine, {
            type: 'line',
            data: donationData,
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true,
                        ticks: {
                            stepSize: 200
                        }
                    }
                }
            }
        });
    </script>
</body>
</html>
