<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Movie Survey</title>
    <style>
        body {
            background-image: url('images/h1.jpeg'); /* Update the background image URL */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        h2 {
            text-align: center;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
        }

        label {
            font-weight: bold;
        }

        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: none;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 18px;
            transition: background-color 0.3s ease-in-out;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>Movie Survey</h2>
    <form action="survey_results.jsp" method="post">
        <label for="language">Which language do you wish to watch a movie in?</label><br>
        <select name="language" id="language">
            <option value="english">English</option>
            <option value="telugu">Telugu</option> <!-- Fixed value for Telugu -->
            <option value="hindi">Hindi</option>   <!-- Fixed value for Hindi -->
            <option value="other">Other</option>
        </select><br><br>

        <label for="movieType">What kind of movie do you want to see?</label><br>
        <select name="movieType" id="movieType">
            <option value="action">Action</option>
            <option value="comedy">Comedy</option>
            <option value="drama">Drama</option>
            <option value="horror">Horror</option>
            <option value="romance">Romance</option>
            <option value="other">Other</option>
        </select><br><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
