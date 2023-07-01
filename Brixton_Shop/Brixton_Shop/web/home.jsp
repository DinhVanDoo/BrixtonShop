<%-- 
    Document   : home
    Created on : Feb 24, 2023, 10:17:48 AM
    Author     : dinhd513
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link href="css/home.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
</head>

<body>
    
    <jsp:include page="menu.jsp"></jsp:include>
    
    <div>
        <img src="img/ảnh bìa.jpg"
            alt="" style="width: 100%;">
    </div>

    <div style=" justify-content: center;">
        <h2 style="text-align: center; margin-top: 20px">NEW PRODUCT</h2>
        <div class="product">
           <c:forEach items="${ListNewProduct}" var="o">
                <div class="card" >
                    <img src="${o.proImg}" style="width:100%">
                    <a class="title" href="detail?proId=${o.proId}"> ${o.proName}</a>
                    <p> ${o.proPrice} $</p>
                    
                        <c:if test="${sessionScope.account.role == 1 || sessionScope.account.role == null }">
                        <p><button class="buy"><a href="addToCart?proId=${o.proId}&num=1" style="color: white">Add To Cart</a></button></p>

                    </c:if>
                    <c:if test="${sessionScope.account.role == 0}">
                         <div style="display: flex; justify-content: space-around; background-color: black; border-radius:10px ">
                            <div style="margin: 10px ;">
                                <a href="getproduct?proId=${o.proId}" style="color: white; padding: 10px ; font-family: 'Eczar', serif;">Edit</a>
                            </div>
                            <div style="margin: 10px ;">
                                <a href="delete?proId=${o.proId}" style="color: red; padding: 10px ; font-family: 'Eczar', serif;">Delete</a>
                            </div> 
                        </div>  

                    </c:if>
                </div>
            </c:forEach>
    </div>


    <jsp:include page="footer.jsp" ></jsp:include>

</body>

</html>