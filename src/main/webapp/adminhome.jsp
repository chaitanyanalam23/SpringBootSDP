<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('your_full_page_image.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
        }

        .header {
            text-align: right;
            padding: 20px;
        }

        .login-button {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
        }

        .image-container {
            text-align: center;
            margin-top: 20px;
        }

        .image-container img {
            width: 300px;
            margin: 10px;
        }
    </style>
</head>
<body>
    <div class="header">
        <a href="login.jsp" class="login-button">Login</a>
    </div>

    <div class="image-container">
        <img src="image1.jpg" alt="Image 1">
        <img src="image2.jpg" alt="Image 2">
        <img src="image3.jpg" alt="Image 3">
    </div>
</body>
</html>
