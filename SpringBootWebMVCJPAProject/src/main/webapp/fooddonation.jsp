<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Food Donation Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ffffff;
            text-align: center;
        }
        
        h1 {
            background-color: #33aaff;
            color: #fff;
            padding: 10px;
        }
        
        form {
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 20px;
            max-width: 400px;
            margin: 0 auto;
        }
        
        label {
            display: block;
            font-weight: bold;
            margin-top: 10px;
        }
        
        input[type="text"],
        input[type="number"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        
        input[type="radio"] {
            margin-right: 5px;
        }
        
        input[type="submit"] {
            background-color: #33aaff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>Food Donation Information</h1>
    <form action="process_food_donation.jsp" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        
        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required>
        
        <label>Sex:</label>
        <input type="radio" id="male" name="sex" value="male">
        <label for="male">Male</label>
        <input type="radio" id="female" name="sex" value="female">
        <label for="female">Female</label>
        
        <label for="features">Additional Features about Food Donation:</label>
        <textarea id="features" name="features" rows="4" required></textarea>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>
