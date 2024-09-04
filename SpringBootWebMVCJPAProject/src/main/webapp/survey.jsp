<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Donation Page</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
    /* styles.css */

body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
}

.header {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 10px;
}

.donation-categories {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    margin: 20px;
}

.category {
    width: 250px;
    background-color: #fff;
    border: 1px solid #ddd;
    padding: 10px;
    margin: 10px;
    text-align: center;
}

.category img {
    max-width: 100%;
}

.category h2 {
    color: #333;
}

.category p {
    color: #777;
}

/* Add more CSS styles as needed */
    
    </style>
</head>
<body>
    <div class="header">
        <h1>Donation Categories</h1>
    </div>

    <div class="donation-categories">
        <div class="category">
            <h2>Blood Donation</h2>
            <img src="images/blood1.jpeg" alt="Blood Donation">
            <p>Donate blood to save lives.</p>
             <a href="blooddonation.jsp">Blood Donation</a>
        </div>

        <div class="category">
            <h2>Food Donation</h2>
            <img src="images/food.jpeg" alt="Food Donation">
            <p>Contribute food to help the needy.</p>
            <a href="fooddonation.jsp">Food Donation</a>
        </div>

        <div class="category">
            <h2>Organ Donation</h2>
            <img src="images/organ.jpeg" alt="Organ Donation">
            <p>Give the gift of life through organ donation.</p>
            <a href="organdonation.jsp">Organ Donation</a>
        </div>

        <div class="category">
            <h2>Clothes Donation</h2>
            <img src="images/clothes.jpeg" alt="Clothes Donation">
            <p>Donate clothing to those in need.</p>
            <a href="clothesdonation.jsp">Clothes Donation</a>
        </div>
    </div>
</body>
</html>
