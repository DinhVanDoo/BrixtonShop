<%-- 
    Document   : userManage
    Created on : Feb 28, 2023, 8:01:00 AM
    Author     : dinhd513
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Manage</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

        <style>
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
                width: 50%;
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
        </style>
        <link rel="stylesheet" href="css/admin.css">
    </head>
    <body>  

        <jsp:include page="menu.jsp"></jsp:include>
            <h2 style="text-align: center; margin-top: 30px">User Manage</h2>
            <div class="row" style="${noneok}">
                <div class="column" style="${noneok}">
                    <table>
                        <tr>
                            <th>ID</th>

                            <th>Name</th>
                            <th>Address</th>
                            <th>Phone</th>
                            <th>Function</th>
                            <th>History Purchase</th>


                        </tr>
                    <c:forEach items="${listUser}" var="o">
                        <tr>
                            <td>${o.accId}</td>
                            <td>${o.name}</td>
                            <td>${o.address}</td>
                            <td>${o.phone}</td>
                            <td style="" ><a href="deleteAccout?accId=${o.accId}" style="color: red;font-size: 20px;">Delete</a></td>
                            <td style="" ><a href="userInfo?accId=${o.accId}" style="color: black;font-size: 20px;">History</a></td>

                        </tr>
                    </c:forEach>
                </table>
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
