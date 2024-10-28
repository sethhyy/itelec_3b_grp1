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
    <title>Emergency Hotline</title>
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
        <h1>Lipa City's Emergency Hotlines</h1>
        <p>Call us, we care.</p>

        <div class="carousel-container">
            <div class="carousel-slide">
                <img src="images/fire.jpg" alt="Fire Department">
                <img src="images/police.jpg" alt="Police Department">
                <img src="images/medic.jpg" alt="Medical Assistance">
            </div>
            <button id="prevBtn"><ion-icon name="arrow-back-outline"></ion-icon></button>
            <button id="nextBtn"><ion-icon name="arrow-forward-outline"></ion-icon></button>
        </div>
    </section>

    <section class="placeholder-section">
        <h2>Emergency Services Available</h2>
        <p>Here are the essential emergency services you can reach out to in Lipa City.</p>
    </section>    

    <section class="info-section">
        <div class="info-container">
            <div class="info-box">
                <img src="images/fire.jpg" alt="Fire Department" class="circle-image" id="fire-circle">
                <h2>Fire Department</h2>
                <p>Call the fire department for fire emergencies and safety tips. Available 24/7 to respond to fire hazards and emergency situations.</p>
                <button onclick="callDepartment('fire')">Call Fire Department</button>
            </div>
            <div class="info-box">
                <img src="images/police.jpg" alt="Police Department" class="circle-image" id="police-circle">
                <h2>Police Department</h2>
                <p>Contact the police for any criminal activity, safety concerns, or neighborhood issues. Always ready to ensure law and order.</p>
                <button onclick="callDepartment('police')">Call Police Department</button>
            </div>
            <div class="info-box">
                <img src="images/medic.jpg" alt="Medical Assistance" class="circle-image" id="medic-circle">
                <h2>Medical Assistance</h2>
                <p>In case of medical emergencies, reach out to the medical assistance hotline. Fast, reliable, and available round the clock.</p>
                <button onclick="callDepartment('medic')">Call Medical Assistance</button>
            </div>
        </div>
    </section>    

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <script>
        const carouselSlide = document.querySelector('.carousel-slide');
        const carouselImages = document.querySelectorAll('.carousel-slide img');

        const prevBtn = document.querySelector('#prevBtn');
        const nextBtn = document.querySelector('#nextBtn');

        let counter = 0;
        const size = carouselImages[0].clientWidth;

        carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';

        nextBtn.addEventListener('click', () => {
            if (counter >= carouselImages.length - 1) return;
            carouselSlide.style.transition = "transform 0.4s ease-in-out";
            counter++;
            carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
        });

        prevBtn.addEventListener('click', () => {
            if (counter <= 0) return;
            carouselSlide.style.transition = "transform 0.4s ease-in-out";
            counter--;
            carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
        });

        window.addEventListener('resize', () => {
            const size = carouselImages[0].clientWidth;
            carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
        });

        document.getElementById('filterMenu').addEventListener('click', function () {
            alert('Filter menu clicked!');
        });

        function callDepartment(department) {
            document.getElementById('fire-circle').style.border = 'none';
            document.getElementById('police-circle').style.border = 'none';
            document.getElementById('medic-circle').style.border = 'none';

            if (department === 'fire') {
                document.getElementById('fire-circle').style.border = '5px solid red';
                document.getElementById('fire-circle').style.boxShadow = '0 0 15px red';
            } else if (department === 'police') {
                document.getElementById('police-circle').style.border = '5px solid blue';
                document.getElementById('police-circle').style.boxShadow = '0 0 15px blue';
            } else if (department === 'medic') {
                document.getElementById('medic-circle').style.border = '5px solid green';
                document.getElementById('medic-circle').style.boxShadow = '0 0 15px green';
            }
        }
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