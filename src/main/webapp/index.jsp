<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Website</title>
    <style>
        body {
            background-color: black;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* Add this CSS for positioning the login button */
        .login-button {
            position: absolute;
            top: 50%;
            right: 20px;
            /* Adjust the right spacing as needed */
            transform: translateY(-50%);
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
        }

        /* Add this CSS to ensure the header covers the full width of the page */
        .header {
            /* Green background color */
            padding: 40px;
            text-align: right;
            /* Align text to the right */
            position: absolute;
            top: 0;
            right: 0;
            left: 0;
        }

        /* Adjust the styles for the rest of the content */
        .full-screen-photo {
            background-image: url('images/h1.jpeg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            text-align: center;
            color: black;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
       

        .images-section {
            text-align: center;
            padding: 20px;
          
        }

        /* Add this CSS for displaying images vertically */
        .image-container {
            text-align: center;
            width: 100%; 
         /* Full width */
           
        }

        .image-container img {
            max-width: 100%; /* Adjust the width as needed */
           
           height: 100vh;
            /* Maintain aspect ratio */
            margin: 20px auto; /* Center-align the images vertically */
        }

        .about-us {
            text-align: center;
            background-color: #f0f0f0;
            padding: 50px;
        }

        .social-logos img {
            width: 50px;
            height: 50px;
            margin: 10px;
        }
    </style>
</head>
<body>
    <div class="header">
        <a href="emplogin.jsp" class="login-button">Login</a>
    </div>
    <div class="full-screen-photo">
        <h1>Movie Recommendation System</h1>
    </div>

    <div class="images-section">
        <!-- Create an image container for vertical display -->
        <div class="image-container">
            <img src="images/home111.jpg" alt="Image 1">
            <img src="images/home112.jpg" alt="Image 2">
            <img src="images/home112.jpg" alt="Image 3">
        </div>
    </div>

    <div class="about-us">
        <h2>About Us</h2>
        <div class="social-logos">
            <img src="images/instagram.jpeg" alt="Instagram Logo">
            <img src="images/facebook.png" alt="Facebook Logo">
            <img src="images/twitter.png" alt="Twitter Logo">
        </div>
        <p>Phone: +123456789</p>
        <p>Email: info@example.com</p>
    </div>
</body>
</html>
