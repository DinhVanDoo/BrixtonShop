<%-- 
    Document   : collection
    Created on : Mar 4, 2023, 10:25:28 PM
    Author     : dinhd513
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Collection</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link rel="stylesheet" href="css/collection.css"/>


        <style>
            body {
                background-color: #f2f2f2;
                background-image: url(img/328139380_719226636268716_1458668456977625910_n.jpg);
                background-size: cover;
                background-repeat: no-repeat;
            }
            .card{
                margin: 10px 10px;
            }
            .listName{
                margin: 20px;
                font-weight: bolder;
                color: white;
                text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
            }
        </style>

    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>

            <div class="pill-nav" style="margin-top: 20px; text-align: center">
            <c:forEach items="${listCollection}" var="o">
                <a class="${checkActive == o.coId? "active":"" } listName"  href="collection?coId=${o.coId}&indexCo=1" style="color: white; font-size: 20px;"  >${o.coName}</a>
            </c:forEach>

            <div class="product">
                <c:forEach items="${listProduct}" var="o">
                    <div class="card">
                        <img src="${o.proImg}" style="width:100% ">
                        <a class="title" href="detail?proId=${o.proId}" > ${o.proName}</a>
                        <p> ${o.proPrice} $</p>
                        <p><button class="buy"><a href="addToCart?proId=${o.proId}&num=1" style="color: white">Add To Cart</a></button></p>
                    </div>
                </c:forEach>
            </div>
            <c:set var="caId" value="${requestScope.coId}"/>
            <div class="check" style="display: block">
                <div class="pagination" style="margin: auto; justify-content: center; margin-top: 30px;">
                    <a href="collection?indexCo=${indexNowCo - 1}&coId=${coId}">&laquo;</a>
                    <c:forEach begin="1" end="${endPageCo}" var="o">
                        <a class="${indexNowCo == o ? "active" : ""}" href="collection?indexCo=${o}&coId=${coId}">${o}</a>
                    </c:forEach>
                    <a href="collection?indexCo=${indexNowCo + 1}&coId=${coId}">&raquo;</a>
                </div>
            </div>

        </div>
    </body>
</html>
