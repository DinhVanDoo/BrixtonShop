<%-- 
    Document   : fogotPassword
    Created on : Mar 5, 2023, 4:00:26 PM
    Author     : dinhd513
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password Page</title>
        
        <link rel="stylesheet" href="css/forgotPassword.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
        <style>
            body{
                font-family: 'Eczar', serif;
            }
        </style>
    </head>
    <body>
        <div class="logo" style="margin-top: 5% ">    
            <a style="font-size: 55px; font-family: 'Lobster', cursive; text-decoration: none; color: black" href="home">Brixton</a>
        </div>
        <div class="container">
            <form action="fogotPassword" method="post">
                <div class="row">
                    <h2 style="text-align:center">Forgot password</h2>
                    <div class="col">
                        <p>${mess}</p>
                        <input type="text" name="username" placeholder="Username" required style="background-color: white">
                        <select id="" name="quesId" style="margin: 10px 0; height: 30px;font-size: large; font-weight: bolder; width: 100%; border: none"> 
                            <c:forEach items="${listQues}" var="o">
                            <option value="${o.quesId}">${o.quesion}</option>
                        </c:forEach>
                        </select><!-- comment -->
                        
                        <input  name="answer"type="text" placeholder="answer" name="Answer" required>
                        
                        <input type="password" name="newpassword" placeholder="New-password" required style="background-color: white">
                        <input type="password" name="repassword" placeholder="Re-password" required style="background-color: white">
                        <input type="submit" value="Done">
                    </div>

                </div>
            </form>
        </div>

        

        <!-- Button to open the modal -->
        <a href="login.jsp" style="text-decoration: none; color: black">Login</a>

    </body>
</html>
