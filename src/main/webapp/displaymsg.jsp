<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message</title>
</head>
<body>
<font color="blue">${message}</font><br><br>

<a href="emplogin">Login</a>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    <style>
        body {
            text-align: center;
            font-family: Arial, sans-serif;
        }

        .container {
            margin-top: 100px;
        }

        .message {
            font-size: 24px;
            color: green;
        }

        .thumbs-up {
            width: 100px;
        }

        .btn {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="images/thumbs.jpeg" alt="Thumbs Up" class="thumbs-up">
        <p class="message">Registration Successful!</p>
        <a href="emplogin.jsp" class="btn">Go Back to Home Page</a>
    </div>
</body>
</html>
