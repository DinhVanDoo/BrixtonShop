<%-- 
    Document   : userInfo
    Created on : Mar 5, 2023, 10:46:58 AM
    Author     : dinhd513
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link href="css/home.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">

        <style>
            body{
                text-align: center;
            }
            * {
                box-sizing: border-box;
            }

            .row {
                margin-top: 70px;
                justify-content: center;
                text-align: center;

                margin-left:-5px;
                margin-right:-5px;
            }

            .column {
                float: left;
                width: 90%;
                padding: 5px;
            }

            /* Clearfix (clear floats) */
            .row::after {
                content: "";
                clear: both;
                display: table;
            }

            table {
                border-collapse: collapse;
                border-spacing: 0;
                width: 100%;
                border: 1px solid #ddd;
            }

            th, td {
                text-align: left;
                padding: 16px;
            }
            .row{
                display: flex;
            }
            tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            * {
                box-sizing: border-box;
            }

            /* Add padding to containers */
            .container {
                padding: 16px;
                background-color: white;
            }

            /* Full-width input fields */
            input[type=text], input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;
            }

            input[type=text]:focus, input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }

            /* Overwrite default styles of hr */
            hr {
                border: 1px solid #f1f1f1;
                margin-bottom: 25px;
            }

            /* Set a style for the submit button */
            .registerbtn {
                background-color: #000;
                color: white;
                padding: 16px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
                opacity: 0.9;
            }

            .registerbtn:hover {
                opacity: 1;
            }

            /* Add a blue text color to links */
            a {
                color: dodgerblue;
            }

            /* Set a grey background color and center the text of the "sign in" section */
            .signin {
                background-color: #f1f1f1;
                text-align: center;
            }
            .changein4{

                display: none;
                text-align: left;
            }
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>

            <input type="hidden" name="accId" value="${sessionScope.account.accId}">
        <div style="justify-content: center; display: flex">
            <form action="userInfo?" method="get">
                <input type="hidden" value="${sessionScope.account.accId}" name="accId">
                <input type="submit" value="History" style="border: none; background-color: #000; color: #f2f2f2; font-weight:  bolder; padding: 5px; border-radius: 5px; margin-top: 20px; margin-right: 10px">
            </form>

            <form action="changeInfoOfUser" method="get">
                <input type="submit" value="Change Info" style="border: none; background-color: #000; color: #f2f2f2; font-weight:  bolder; padding: 5px; border-radius: 5px; margin-top: 20px; margin-right: 10px;margin-left: 10px">
            </form>

            <form action="changePassOfUser" method="get">
                <input type="submit" value="Change Password"  style="border: none; background-color: #000; color: #f2f2f2; font-weight:  bolder; padding: 5px; border-radius: 5px; margin-top: 20px; margin-left: 10px">
            </form>

            <form action="changeSQOfUser" method="get">
                <input type="submit" value="Change Security Question" style="border: none; background-color: #000; color: #f2f2f2; font-weight:  bolder; padding: 5px; border-radius: 5px; margin-top: 20px; margin-left: 10px">
            </form>

        </div>

        <h5 style="margin-top: 30px">${mess}</h5>
        <c:set var="none1" value="${requestScope.none1}" />
        <div class="changein4" style="display: ${none1}; width: 60%; justify-content: center; margin: 40px auto">
            <form action="changeInfoOfUser" method="post">
                <h1>Change info</h1>
                <hr>
                <label for="accName"><b>Name</b></label>
                <input type="text" placeholder="Enter Name" name="accName" required value="${accName}">

                <label for="accAdrress"><b>Address</b></label>
                <input type="text" placeholder="Enter Address" name="accAdrress"  required value="${accAdrress}">

                <label for="accPhone"><b>Phone</b></label>
                <input type="text" placeholder="Enter Phone" name="accPhone"  required value="${accPhone}">
                <hr>

                <button type="submit" class="registerbtn">Done</button>
            </form>
        </div>

        <c:set var="none2" value="${requestScope.none2}" />
        <div class="changein4" style="display: ${none2}; width: 60%; justify-content: center; margin: 40px auto">
            <form action="changePassOfUser" method="post">
                <h1>Change Password</h1>
                <a>${requestScope.mess2}</a>
                <hr>
                <label for="accPass"><b>Old PassWord</b></label>
                <input type="text" placeholder="Enter Old PassWord" name="accPass" pattern="[A-Za-z0-9]+" required>

                <label for="accNewPass"><b>New PassWord</b></label>
                <input type="text" placeholder="Enter New PassWord" name="accNewPass" pattern="[A-Za-z0-9]+" required >

                <label for="accReNewPass"><b>Re-New PassWord</b></label>
                <input type="text" placeholder="Enter Re-New PassWord" name="accReNewPass" pattern="[A-Za-z0-9]+" required >
                <hr>

                <button type="submit" class="registerbtn">Done</button>
            </form>
        </div>        

        <c:set var="none3" value="${requestScope.none3}" />
        <div class="changein4" style="display: ${none3}; width: 60%; justify-content: center; margin: 40px auto">
            <form action="changeSQOfUser" method="post">
                <h1>Change Security Question</h1>
                <a>${requestScope.mess2}</a>
                <hr>
                <input type="text" placeholder="Enter your password" name="accPass"  required pattern="[A-Za-z0-9]+">
                <!--                <label for="accPass"><b>Old PassWord</b></label>
                                <input type="text" placeholder="Enter Old PassWord" name="accPass" required>
                
                                <label for="accNewPass"><b>New PassWord</b></label>
                                <input type="text" placeholder="Enter New PassWord" name="accNewPass"  required >-->
                <select name="quesId" style="border: none; font-weight: bolder" >
                    <c:forEach items="${listQ}" var="o">
                        <option value="${o.quesId}">${o.quesion}</option>
                    </c:forEach>
                </select> <br/><br/>
                <label for="accAnswer"><b>New answer</b></label>
                <input type="text" placeholder="Enter your answer" name="accAnswer"  required >
                <hr>

                <button type="submit" class="registerbtn">Done</button>
            </form>
        </div>       




        <div class="row">
            <div class="column" style="display: ${none}">
                <h2 style="text-align: center; margin-top: 30px">History order</h2>
                <table>
                    <tr>
                        <th>Order ID</th>
                        <th>Order Date</th>
                        <th>Product ID</th>
                        <th>Product Name</th>
                        <th>Quantity</th>
                        <th>Price of ProDuct</th>
                        <th>User Name</th>
                        <th>User Address</th>
                        <th>User Phone</th>
                        <th>Total Money of Order ID</th>

                    </tr>
                    <c:forEach items="${listOrderOfUser}" var="o">
                        <tr>
                            <td>${o.orId}</td>
                            <td>${o.ordate}</td>
                            <td>${o.proId}</td>
                            <td>${o.proName}</td>
                            <td>${o.quantity}</td>
                            <td>${o.proPrice} $</td>
                            <td>${o.name}</td>
                            <td>${o.address}</td>
                            <td>${o.phone}</td>
                            <td>${o.totalMoney} $</td>

                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>
