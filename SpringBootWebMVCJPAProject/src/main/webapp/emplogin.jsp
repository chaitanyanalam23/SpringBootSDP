<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ page import="java.util.Random" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            background-image: url("./images/R.jpeg");
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .h3{
            font-size: 40px;
        }
        .captcha-box {
            display: inline-block;
            background-color: white;
            padding: 5px;
        }
    </style>
    <script>
        function validateCaptcha() {
            var enteredCaptcha = document.getElementById("captcha").value;
            var expectedCaptcha = document.getElementById("captchaValue").value;
            
            if (enteredCaptcha !== expectedCaptcha) {
                alert("Incorrect CAPTCHA! Please try again.");
                return false;
            }
        }
    </script>
</head>
<body>
    <br>
    <br>
    <span class="blink">
        <h3 align="center" style="color:red " >${message}</h3>
    </span>
    <h3 align="center" style="color:white"><u>Login</u></h3>
    <br>
    <form method="post" action="checkemplogin" onsubmit="return validateCaptcha();">
        <table align="center">
            <tr>
                <td><label style="color:white">Email ID</label></td>
                <td><input type="email" name="email" required/></td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td><label style="color:white">Password</label></td>
                <td><input type="password" name="pwd" required/></td>
            </tr>
            <tr>
                <td><label style="color:white">Captcha</label></td>
                <td>
                     <div class="captcha-box">
                        <%
                            String captcha = generateRandomCaptcha();
                        %>
                        <span style="color:black;"><%= captcha %></span>
                        <input type="text" id="captcha" name="captcha" required/>
                        <input type="hidden" id="captchaValue" value="<%= captcha %>"/>
                    </div> 
               
                </td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Login" class="button">
                </td>
            </tr>
        </table>
    </form>
    <br>
    <h3 align="center" style="color:white">
        New Registration ? <a href="empreg" style="color:white">Click Here</a>
    </h3>
</body>

</html>
<%!
    private String generateRandomCaptcha() {
        Random rand = new Random();
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder captcha = new StringBuilder();
        int length = 6; // You can adjust the length of the captcha
        for (int i = 0; i < length; i++) {
            captcha.append(characters.charAt(rand.nextInt(characters.length())));
        }
        return captcha.toString();
    }
%>
