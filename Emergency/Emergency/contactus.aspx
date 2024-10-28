<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="Emergency.contactus" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;800&display=swap" rel="stylesheet">
    <script src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <title>Contact Us - Emergency Hotline</title>
</head>
<body>
    <header>
        <nav>
            <a href="Default.aspx"><img src="images/logo.jpg" alt="Lipa City Emergency Hotline Logo"></a>
            <div class="nav-links">
                <ul>
                    <li><a href="Default.aspx">Home</a></li>
                    <li><a href="brgy.aspx">Barangay</a></li>
                    <li><a href="aboutus.aspx">About Us</a></li>
                    <li><a href="contactus.aspx">Contact Us</a></li>
                </ul>
            </div>

            <div class="filter-container">
                <button id="filterMenu" class="filter-button">
                    <ion-icon name="menu"></ion-icon>
                </button>
            </div>
        </nav>
    </header>

    <section class="text-box">
        <h1>Lipa City's Emergency Hotline</h1>
        <p>Dedicated to providing an efficient </p>
        <p> emergency services to the citizens of Lipa City.</p>
    </section>

    
    <section class="contact-section">
        <h1>Contact Us</h1>
        <p>If you need assistance, don’t hesitate to contact us.</p>
        
        <div class="contact-info">
            <div class="contact-box">
                <ion-icon name="call" class="contact-icon"></ion-icon>
                <h2>Emergency Hotline Numbers</h2>
                <p><strong>Fire Department:</strong> (555) 123-4567</p>
                <p><strong>Police Department:</strong> (555) 987-6543</p>
                <p><strong>Medical Assistance:</strong> (555) 678-9101</p>
            </div>
            
            <div class="contact-box">
                <ion-icon name="mail" class="contact-icon"></ion-icon>
                <h2>Email Us</h2>
                <p>For non-emergency inquiries or additional information, you can email us at:</p>
                <p><a href="mailto:info@emergencylipa.com">info@emergencylipa.com</a></p>
            </div>

            <div class="contact-box">
                <ion-icon name="location" class="contact-icon"></ion-icon>
                <h2>Visit Us</h2>
                <p>Lipa City Emergency Office</p>
                <p>123 Safety St, Lipa City, Philippines</p>
            </div>
        </div>
    </section>
    <script>
        document.getElementById('filterMenu').addEventListener('click', function () {
            alert('Filter menu clicked!');
        });
    </script>
</body>
<footer class="footer">
    <div class="footer-bottom">
        <div class="footer-rights">
            <p>&copy; 2024 All rights reserved</p>
        </div>
    </div>
</footer>
</html>