<%-- 
    Document   : login
    Created on : Feb 27, 2023, 7:22:34 PM
    Author     : dinhd513
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="css/login.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="logo" style="margin-top: 5% ">    
            <a style="font-size: 55px; font-family: 'Lobster', cursive; text-decoration: none; color: black" href="home">Brixton</a>
        </div>
        <div class="container">
            <form action="login" method="post">
                <div class="row">
                    <h2 style="text-align:center">Login with Social Media or Manually</h2>
                    <div class="col">
                        <p>${mess}</p>
                        <input type="text" name="username" placeholder="Username" required style="background-color: white" pattern="[A-Za-z0-9]+">
                        <input type="password" name="password" placeholder="Password" required style="background-color: white" pattern="[A-Za-z0-9]+">
                        <input type="submit" value="Login">
                    </div>

                </div>
            </form>
        </div>

        <div class="bottom-container">
            <div class="row">
                <div class="col">
                    <form method="get" action="fogotPassword">
                        <input type="submit" value="Forgot password?" style="background-color: #ffffff; color: #000"  />
                        <!--<a href="fogotPassword.jsp" style="color:rgb(0, 0, 0)" class="btn">Forgot password?</a>-->
                    </form>

                </div>
            </div>
        </div>


        <div class="bottom-container">
            <div class="row">
                <div class="col">
                    <form action="signup" method="post"  >
                        <!--            <a href="signup.jsp" style="text-decoration: none; color: black">Sign Up</a>-->
                        <input type="submit" value="Sign Up" style="background-color: #ffffff; color: #000">
                    </form>

                </div>
            </div>
        </div>

        <!-- Button to open the modal -->




    </body>
</html>