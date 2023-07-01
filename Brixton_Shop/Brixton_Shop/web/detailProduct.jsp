<%-- 
    Document   : detailProduct
    Created on : Feb 24, 2023, 5:05:21 PM
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
        <link href="css/detailProduct.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
        
    </head>

    <body>
        <jsp:include page="menu.jsp"></jsp:include>

        </div>
        <div class="row">
            <div class="product">
                <div class="product-img">
                    <img src="${product.proImg}" alt="">
                <span class="tag">new</span>
            </div>
            <div class="product-listing">
                <div class="content">
                    <h3 class="name" style="font-size: 40px">${product.proName}</h3>
                    <p class="info">${product.proDetail}</p>
                    <p class="price">${product.proPrice} $</p>
                    <div class="btn-and-rating-box">
                        <c:if test="${sessionScope.account.role == 1 || sessionScope.account.role == null }">
                        <a href="addToCart?proId=${product.proId}&num=1" style="color: white; background-color: black; padding: 10px; text-decoration: none; border-radius: 10px ">Add To Cart</a>

                    </c:if>
                    <c:if test="${sessionScope.account.role == 0}">
                         <div style="display: flex; justify-content: space-around; background-color: black; border-radius:10px ">
                            <div style="margin: 10px ;">
                                <a href="getproduct?proId=${product.proId}" style="color: white; padding: 10px ; font-family: 'Eczar', serif;">Edit</a>
                            </div>
                            <div style="margin: 10px ;">
                                <a href="delete?proId=${product.proId}" style="color: red; padding: 10px ; font-family: 'Eczar', serif;">Delete</a>
                            </div> 
                        </div>  

                    </c:if>
                        <!--<button class="btn"><a href="addToCart?proId=${product.proId}&num=1" style="color: white">Add To Cart</a></button>-->
                    </div>
                </div>
            </div>
        </div>
    </div>


    <jsp:include page="footer.jsp" ></jsp:include>
</body>

</html>
