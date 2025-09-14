<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reduce Food Wastage</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<style>
body, html {
    height: 100%;
    margin: 0;
    font-family: 'Arial', sans-serif;
    background-image: linear-gradient(to bottom right, rgba(47, 102, 95, 0.6), rgba(47, 102, 255, 0.6)), url(Images/home4.jpg);
    background-position: center;
    background-repeat: no-repeat;
    background-size: 100% 100%; /* Ensure the image and gradient cover the entire body */
    background-color: #FBF4DB;
    position: relative;
    color: #fff;
    text-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
}

.button-section {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh; /* Full viewport height */
    text-align: center;
}

.btn-light {
    background-color: #BDE8CA; /* Light green button */
    color: #333; /* Dark text color for the button */
    border: none;
    padding: 10px 20px; /* Add padding for better appearance */
    font-size: 1.2rem; /* Increase font size */
    border-radius: 5px; /* Add border radius */
    transition: background-color 0.3s, transform 0.3s; /* Smooth transition for hover effects */
}

.btn-light:hover {
    background-color: #A3D9B0; /* Darker green button on hover */
    transform: scale(1.05); /* Slightly increase size on hover */
}

 

.container {
background-color: rgba(0, 0, 0, 0.5); /* Optional overlay for better text visibility */
padding: 20px;
border-radius: 8px;
}

/* Section with specific background image */
.section-background {
position: relative;
height: 50vh; /* Adjust the height as needed */
overflow: hidden; /* Hide any overflow from pseudo-element */
}


.section-background::after {
content: "";
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%; /* Covers the entire section */
background-color: rgba(173, 216, 230, 0.5); /* Light blue overlay with transparency */
z-index: -1; /* Place the pseudo-element behind the content but above the image */
}


.navbar {
background-color: rgba(173, 216, 230, 0.8); /* Light blue color with transparency */
}

.navbar-brand {
color: #006400 !important; /* Dark green color for contrast */
font-size: 1.5rem;
}

.navbar-nav .nav-item .nav-link {
color: #006400 !important; /* Dark green color for contrast */
}

.navbar-nav .nav-item:hover {
background-color: #28a745; /* Green color on hover */
}

.jumbotron {
  background-color: rgba(0, 100, 0, 0.7);
  padding: 2rem 1rem;
  border-radius: 0.3rem;
  text-align: center;
  width: 80%;
  max-width: 600px; /* Ensure the jumbotron doesn't get too wide */
  margin: 20px auto;
  /* Flexbox centering */
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.card {
background-color: rgba(34, 139, 34, 0.9); /* Darker green with transparency */
border: none;
color: #fff; /* Light text color for contrast */
box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
margin-top: 20px; /* Add margin to separate from the jumbotron */
}

.card .card-title {
color: #fff; /* Light color for the title */
}

.highlight {
font-weight: bold;
color: #006400; /* Dark green color for the highlight */
}

.founders-section, .partners-section, .contact-section {
background-color: rgba(244, 244, 244, 0.8); /* Light gray with transparency */
padding: 50px 0;
border-radius: 10px;
box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
color: #333;
text-shadow: none;
}

.founders-section h2, .partners-section h2, .contact-section h2 {
font-size: 2.5rem;
color: #333;
margin-bottom: 20px;
text-transform: uppercase;
font-weight: 600;
}

.founders-section .row {
justify-content: center;
}

.founders-section .col-md-4 {
margin-bottom: 30px;
text-align: center;
transition: transform 0.3s ease-in-out;
}

.founders-section img {
max-width: 200px;
height: 200px;
border-radius: 50%;
border: 5px solid #006400;
margin-bottom: 15px;
margin-bottom: 50px; 
}

.founders-section h4 {
font-size: 1.5rem;
color: #333;
margin-top: 10px;
font-weight: 600;
}

.founders-section p {
font-size: 1rem;
color: #555;
margin-top: 10px;
}

.founders-section .col-md-4:hover {
background-color: #e9ecef;
border-radius: 10px;
box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
transform: scale(1.05);
}

.founders-section .col-md-4 h4 {
color: #006400;
}
/* Success Stories Section */
.success-stories {
background-color: rgba(0, 0, 0, 0.5); /* Dark overlay */
padding: 50px 0;
border-radius: 10px;
color: #fff;
text-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
margin-top: 50px;
}

.success-stories h2 {
font-size: 2.5rem;
margin-bottom: 20px;
text-transform: uppercase;
font-weight: 600;
color: #BDE8CA; /* Light green color for heading */
}

.success-stories .row {
justify-content: center;
}

.success-stories .col-md-4 {
margin-bottom: 30px;
text-align: center;
transition: transform 0.3s ease-in-out;
overflow: hidden;
}

.success-stories img {
max-width: 100%;
height: auto;
border-radius: 10px;
border: 5px solid #006400;
transition: transform 0.3s ease-in-out;
}

.success-stories .col-md-4:hover img {
transform: scale(1.05);
}

.success-stories h4 {
font-size: 1.5rem;
margin-top: 10px;
font-weight: 600;
color: #BDE8CA; /* Light green color for sub-heading */
}

.success-stories p {
font-size: 1rem;
margin-top: 10px;
color: #f1f1f1; /* Light gray color for text */
}

.partners-section img {
height: 80px;
width: auto;
 margin-bottom: 20px;
}
/* Footer styling */
footer {
background-color: #333;
color: white;
padding-top: 20px;
padding-bottom: 20px;
  margin-top: 40px;
}

footer h4 {
color: #BDE8CA; /* Light green color for headings */
margin-bottom: 10px;
}

footer p, footer a {
color: #f1f1f1; /* Light gray color for text */
}

footer a {
text-decoration: none;
transition: color 0.3s;
}

footer a:hover {
color: #BDE8CA; /* Change to light green on hover */
}

/* About Us and Get Connected sections */
footer .row {
display: flex;
flex-wrap: wrap;
justify-content: space-between;
gap: 20px;
}

footer .col-md-4 {
flex: 1;
min-width: 200px;
}

/* Site Links - Vertical Layout */
footer .list-unstyled {
list-style-type: none;
padding: 0;
display: block; /* Change to block for vertical layout */
margin: 0; /* Remove default margin */
}

footer .list-unstyled li {
margin: 10px 0; /* Adjust spacing between links */
}

footer .list-unstyled a {
font-size: 14px;
color: #f1f1f1;
}

footer .list-unstyled a:hover {
color: #BDE8CA;
}

/* Footer Bottom Section */
footer .container.p-4.text-center {
background-color: #222;
color: #f1f1f1;
border-top: 1px solid #444;
margin-top: 20px;
}

/* Responsive Design */
@media (max-width: 768px) {
footer .row {
flex-direction: column;
align-items: center;
}

footer .col-md-4 {
text-align: center;
margin-bottom: 20px;
}

/* Adjust Site Links layout for smaller screens */
footer .list-unstyled {
justify-content: center;
}

footer .list-unstyled li {
margin: 10px 0; /* Stack items vertically with space in between */
}
}


/* Button style */
.btn-light {
background-color: #BDE8CA; /* Light green button */
color: #333; /* Dark text color for the button */
border: none;
}

.btn-light:hover {
background-color: #A3D9B0; /* Darker green button on hover */
}

.social-links {
display: flex;
gap: 100px; /* Adjust the gap between icons */
}

.social-icon {
display: inline-block;
}
.social-icon {
margin-right: 100px; /* Adjust the margin as needed */
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
<a class="navbar-brand" href="#">
<img src="Images/logo.jpg" alt="Logo" width="30" height="30" class="d-inline-block align-top">
<span class="highlight">ZeroWasteHub</span>
</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarNav">
<ul class="navbar-nav">
<li class="nav-item mr-2">
<a class="nav-link" href="home.jsp">Home</a>
</li>
<li class="nav-item mr-2">
<a class="nav-link" href="about.jsp">About Us</a>
</li>
<li class="nav-item mr-2">
<a class="nav-link" href="contact.jsp">Contact Us</a>
</li>
<li class="nav-item mr-2">
<a class="nav-link" href="faq.jsp">FAQ</a>
</li>
</ul>
<form class="d-flex">
<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
<button class="btn btn-outline-success" type="submit">Search</button>
</form>
<ul class="navbar-nav ml-auto">
<a class="nav-link " href="chatbot.jsp" id="navbarDropdown" role="button">
Help
</a>
<li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
Login
</a>
<div class="dropdown-menu" aria-labelledby="navbarDropdown">
<a class="dropdown-item" href="adminLogin.jsp">Admin Login</a>
<a class="dropdown-item" href="donorlogin.jsp">Donor Login</a>
<a class="dropdown-item" href="recipientlogin.jsp">Recipient Login</a>
</div>
</li>
<li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" href="#" id="registerDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
Register
</a>
<div class="dropdown-menu" aria-labelledby="registerDropdown">
<a class="dropdown-item" href="donorregistration.jsp">Donor</a>
<a class="dropdown-item" href="recipientRegistration.jsp">Recipient</a>
</div>
</li>
</ul>
</div>
</nav>

<div class="full-page">
<div class="jumbotron">
<h1 class="display-4">Welcome to Reduce Food Wastage Platform</h1>
<p class="lead">Track and manage food resources more efficiently!</p>
<a class="btn btn-light" href="foodwastage.jsp">Learn More</a>
</div>


</div>
<div class="container mt-5 text-center">
<div class="card">
<div class="card-body">
<h2 class="card-title">Join the Movement Against Food Waste!</h2>
<p class="card-text">Food wastage is a pressing global issue, affecting our environment and communities. Every year, millions of tons of food go uneaten while countless individuals face hunger. At ZeroWasteHub, we are committed to changing this narrative by connecting food donors with those in need.</p>
<p class="card-text">Our platform offers an easy way for businesses and individuals to donate surplus food to local organizations that serve vulnerable populations. By participating, you can help reduce waste and ensure that food reaches those who need it most.</p>
<p class="card-text">We believe that every effort counts, no matter how small. Together, we can create a sustainable future and foster a culture of sharing and generosity. Join us in making a difference in your community today!</p>
</div>
</div>
</div>
<div class="container mt-5 text-center founders-section">
<h2>Meet Our Founders</h2>
<p>ZeroWasteHub was founded by a group of passionate individuals committed to reducing food waste and making a positive impact on the world. Here's a look at our visionary founders:</p>
<div class="row">
<div class="col-md-4">
<img src="Images/founder1.jpg" class="img-fluid rounded-circle" alt="Founder 1">
<h4>John Doe</h4>
<p>Co-Founder & CEO</p>
<p>John is a visionary entrepreneur with a background in environmental sustainability. He co-founded ZeroWasteHub with the goal of creating a platform that connects food donors to local communities in need, aiming to reduce food waste and fight hunger.</p>
</div>
<div class="col-md-4">
<img src="Images/founder2.jpg" class="img-fluid rounded-circle" alt="Founder 2">
<h4>Jane Smith</h4>
<p>Co-Founder & COO</p>
<p>Jane brings a wealth of experience in operations and community outreach. She is dedicated to building partnerships with local organizations and ensuring that ZeroWasteHub's operations run smoothly, making the platform more accessible to those in need.</p>
</div>
</div>
</div>
  <section class="success-stories mt-5">
        <div class="container text-center">
            <h2>Success Stories</h2>
            <div class="row">
                <div class="col-md-4">
                    <img src="Images/success1.jpeg" alt="Success Story 1">
                    <h4>Success Story 1</h4>
                    <p>Impactful story of how our platform helped reduce food waste.</p>
                    <p>In collaboration with local shelters, we successfully provided over 10,000 meals to the homeless in our community. This initiative not only reduced food waste but also brought warmth and nourishment to those in need.</p>
                </div>
                <div class="col-md-4">
                    <img src="Images/success2.jpeg" alt="Success Story 2">
                    <h4>Success Story 2</h4>
                    <p>Another success story of connecting donors with recipients.</p>
                    <p>Thanks to our food donors and volunteers, we were able to distribute essential groceries to over 500 families during the holiday season. This support ensured that every family could enjoy a hearty meal together.</p>
                    
                </div>
                <div class="col-md-4">
                    <img src="Images/success3.jpeg" alt="Success Story 3">
                    <h4>Success Story 3</h4>
                    <p>How our efforts made a significant impact on food security.</p>
                    <p>Our initiatives have reduced food waste by 40% and provided nutritious meals to over 10,000 underprivileged families, significantly improving food security and community health. Through community outreach programs.</p>
                </div>
            </div>
        </div>
    </section>




<!-- Our Partners Section -->
<div class="container mt-5 text-center partners-section">
<h2>Our Partners</h2>
<p>We are proud to collaborate with these organizations that share our vision of reducing food waste and improving food security.</p>
<!-- Partners Carousel -->
<div id="partnersCarousel" class="carousel slide" data-ride="carousel">
<div class="carousel-inner">
<div class="carousel-item active">
<div class="row">
<div class="col-md-3">
<img src="Images/partner1.jpeg" class="d-block w-100" alt="Partner 1">
</div>
<div class="col-md-3">
<img src="Images/partner2.jpeg" class="d-block w-100" alt="Partner 2">
</div>
<div class="col-md-3">
<img src="Images/partner3.png" class="d-block w-100" alt="Partner 3">
</div>
<div class="col-md-3">
<img src="Images/partner4.png" class="d-block w-100" alt="Partner 4">
</div>
</div>
</div>
<div class="carousel-item">
<div class="row">
<div class="col-md-3">
<img src="Images/partner5.png" class="d-block w-100" alt="Partner 5">
</div>
<div class="col-md-3">
<img src="Images/partner6.png" class="d-block w-100" alt="Partner 6">
</div>
<div class="col-md-3">
<img src="Images/partner7.png" class="d-block w-100" alt="Partner 7">
</div>
<div class="col-md-3">
<img src="Images/partner8.jpeg" class="d-block w-100" alt="Partner 8">
</div>
</div>
</div>
</div>
<a class="carousel-control-prev" href="#partnersCarousel" role="button" data-slide="prev">
<span class="carousel-control-prev-icon" aria-hidden="true"></span>
<span class="sr-only">Previous</span>
</a>
<a class="carousel-control-next" href="#partnersCarousel" role="button" data-slide="next">
<span class="carousel-control-next-icon" aria-hidden="true"></span>
<span class="sr-only">Next</span>
</a>
</div>
</div>
<!-- Contact Section -->
<footer class="bg-body-tertiary text-center text-md-start" style="background-color: #333; color: white;">
<div class="container p-4">
<!-- About Us Section -->
<div class="row">
<div class="col-md-4">
<h4>About Us</h4>
<p>Dedicated to reducing food wastage and improving food security. Connecting food donors with organizations in need to create a sustainable and secure food system.</p>
<p>We aim to minimize food wastage and maximize food security through a streamlined and efficient platform.</p>
<a href="#" class="btn btn-light">Read More</a>
</div>

<!-- Site Links Section -->
<div class="col-md-4">
<h4>Site Links</h4>
<ul class="list-unstyled">
<li><a href="#" class="text-light">Home</a></li>
<li><a href="#" class="text-light">About</a></li>
<li><a href="#" class="text-light">Donate</a></li>
<li><a href="#" class="text-light">Causes</a></li>
<li><a href="#" class="text-light">Event</a></li>
<li><a href="#" class="text-light">Blog</a></li>
</ul>
</div>

<!-- Get Connected Section -->
<div class="col-md-4">
<h4>Get Connected</h4>
<p>27-2-43, MG Road, Vijayawada, Andhra Pradesh, India.</p>
<p>Phone: +2 392 3929 210</p>
<p>Email: <a href="mailto:zerowastehub@gmail.com" class="text-light">zerowastehub@gmail.com</a></p>
</div>
</div>
</div>

<!-- Footer Bottom Section -->
<div class="container p-4 text-center">
<p>&copy; 2024 ZeroWasteHub. All Rights Reserved.</p>
</div>
</footer>

<!-- Scripts for Bootstrap Carousel and JS functionality -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

<script>
        document.getElementById("learnMoreBtn").addEventListener("click", function() {
            var learnMoreSection = document.getElementById("learnMoreSection");
            if (learnMoreSection.style.display === "none") {
                learnMoreSection.style.display = "block";
            } else {
                learnMoreSection.style.display = "none";
            }
        });
    </script>
</body>
</html>