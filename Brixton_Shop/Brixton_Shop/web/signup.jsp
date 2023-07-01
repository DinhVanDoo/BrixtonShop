<%-- 
    Document   : signup
    Created on : Feb 28, 2023, 3:50:18 PM
    Author     : dinhd513
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Page</title>
        <link rel="stylesheet" href="css/signup.css">
        <style>
            body{
                font-family: 'Eczar', serif;
                background-color: #c3c3c3;


            }
            .modal{
                background-image: url('img/328139380_719226636268716_1458668456977625910_n.jpg')
            }
            .modal-content{
                border-radius: 20px;
                border: none;
            }

            input{
                background-color: #eae8e8;
            }

            .modal{
                background-color: #777674;
            }
        </style>
    </head>
    <body>
        <div class="modal">
            <form class="modal-content" action="signup" method="get">
                <div class="container2">
                    <h1 style="text-align: center">Sign Up</h1>
                    <p>${messErrorPass} </p>
                    <p>${messErrorID}</p>
                    <hr>

                    <label for="name"><b>Name</b></label>
                    <input type="text" placeholder="Enter Full Name" name="name" required>

                    <label for="phone"><b>Phone</b></label>
                    <input type="text" placeholder="Enter Phone" name="phone" required>

                    <label for="address"><b>Address</b></label>
                    <input type="text" placeholder="Enter Addres" name="address" required>

                    <label for="id"><b>Username</b></label>
                    <input type="text" placeholder="Enter Username" name="id" required pattern="[A-Za-z0-9]+">

                    <label for="psw"><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="psw" required pattern="[A-Za-z0-9]+">

                    <label for="psw-repeat"><b>Repeat Password</b></label>
                    <input type="password" placeholder="Repeat Password" name="pswrepeat" required pattern="[A-Za-z0-9]+">



                    <select id="country" name="quesId" style="margin: 10px; height: 25px; font-weight: bolder"> 
                        <c:forEach items="${listQues}" var="o">
                            <option value="${o.quesId}">${o.quesion}</option>
                        </c:forEach>
                    </select>
                    <br>
                        
                    <label for="answer"><b>Answer</b></label>
                    <input type="text" placeholder="answer" name="answer" required>

                    <label>
                        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
                    </label>


                    <div class="clearfix">
                        <button type="button" class="cancelbtn" > <a href="login" style="text-decoration: none; color: black">Back</a><!-- comment --></button>
                        <button type="submit" class="signup" style="width: 50%; background-color: #000; color: white" >Sign Up</button>
                    </div>
                </div>
            </form>
        </div>

    </body>
</html>
