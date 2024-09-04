<%-- <%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 

<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>

</style>
</head>
<body>

<%@ include file="empnavbar.jsp" %>

<br>

<h3 align=right>Hi, ${ename}</h3>

</body>
</html> --%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<h3 align=right>Hi, ${ename}</h3>
    <style>
        /* Global Styles */
         /* Global Styles */
        body {
            background-color: black; /* Background color set to black */
            margin: 0; /* Remove default margin */
            font-family: Arial, sans-serif;
        }

        /* Navbar Styles */
        .navbar {
            background-color: white; /* White background for the navbar */
            display: flex;
            justify-content: space-between;
            padding: 10px 20px;
            align-items: center;
        }

        .navbar a {
            text-decoration: none;
            margin-right: 20px;
            color: black;
            font-weight: bold;
        }

        .search-container {
            display: flex;
            align-items: center;
        }

        .search-icon {
            font-size: 20px;
            margin-right: 5px;
        }

        .search-bar {
            border: none;
            padding: 10px;
            border-radius: 5px;
        }

        /* Photo Row Styles */
        .photo-row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between; /* Distribute photos evenly */
            margin: 40px auto; /* Add margin for spacing */
            max-width: 18000px; /* Set a maximum width for the row */
        }

        .photo {
            width: 18%; /* Adjust the width as needed */
            height: auto; /* Maintain aspect ratio */
            border: 1px solid #ccc; /* Add a border for styling */
            cursor: pointer; /* Add cursor pointer on hover */
            perspective: 1000px; /* Set perspective for 3D effect */
            transition: transform 0.5s; /* Add smooth transition */
            position: relative; /* Position for absolute text */
        }

        .photo .card {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background-color: #fff;
            backface-visibility: hidden; /* Hide backface when flipped */
            transform: rotateY(180deg); /* Initially hidden on the backside */
            opacity: 0;
            transition: opacity 0.3s;
        }

        .photo:hover .card {
            transform: rotateY(0deg);
            opacity: 1;
        }
        
    </style>
</head>
<body>

<div class="navbar">
    <div>
        <!-- Recommended Movies Link -->
        
        <a href="survey.jsp">Donation</a>
         
        <!-- New Releases Link -->
        <a href="aboutus.jsp">About us</a>
        <a href="contactus.jsp">Contact us</a>
        <a href="index.jsp">Logout</a>
        
    </div>
    
    

    <!-- Search Container -->
    <div class="search-container">
        <i class="fa fa-search search-icon"></i> <!-- Search Icon -->
        <input type="text" class="search-bar" placeholder="Search...">
    </div>
</div>



 

<!-- Add a container for the row of photos -->


<!-- Container for displaying image description -->
<div id="imageDescription">
   <img src="images/organ.jpeg" alt="Organ Donation" width="1500" height="600">
</div>

<script>
    // Get the photo elements
    var photos = document.querySelectorAll(".photo");
    document.getElementById("imageDescription").textContent = description;


    // Add mouse enter and leave event listeners
    photos.forEach(function (photo) {
        photo.addEventListener("mouseenter", function () {
            this.style.transform = "rotateY(0deg)";
        });

        photo.addEventListener("mouseleave", function () {
            this.style.transform = "rotateY(180deg)";
        });
    });
</script>

</body>
</html>
