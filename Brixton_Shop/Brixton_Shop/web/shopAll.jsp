<%-- 
    Document   : shopAll
    Created on : Feb 24, 2023, 2:41:29 PM
    Author     : dinhd513
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Shop ALL</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link href="css/shopAll.css" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
        <style>
            .categories{
                margin-left: 100px;
            }

            #myUL {
                list-style-type: none;
                padding: 0;
                margin: 0;
                display: flex;
            }
            #myUL li a {
                /* Prevent double borders */
                background-color: #fffefe;
                padding: 12px;
                text-decoration: none;
                font-size: 25px;
                color: black;
                display: block;
                font-family: 'Eczar', serif;
            }
            #myUL li a:hover:not(.header) {
                background-color: #2b2b2b;
            }
            .Active{
                font-size: 30px;
            }
            .footer{
                bottom: 0;
                float: bottom;
                margin-top: 50px;
            }
            body {
                margin: 0;
                padding: 0;
                background-color: white;
                font-family: 'Eczar', serif;
            }
            .box {
                position: absolute;
                margin-top: 10px;
                left: 80%;
            }
            .box select {
                background-color: black;
                color: white;
                padding: 12px;
                width: 250px;
                border: none;
                font-size: 20px;
                box-shadow: 0 5px 25px rgba(0, 0, 0, 0.2);
                -webkit-appearance: button;
                appearance: button;
                outline: none;
                border-radius: 20px;
            }
            .box::before {
                content: "\f13a";
                font-family: 'Eczar', serif;
                position: absolute;
                top: 0;
                right: 0;
                width: 20%;
                height: 100%;
                text-align: center;
                font-size: 28px;
                line-height: 45px;
                color: rgba(255, 255, 255, 0.5);
                background-color: rgba(255, 255, 255, 0.1);
                pointer-events: none;
            }
            .box:hover::before {
                color: rgba(255, 255, 255, 0.6);
                background-color: rgba(255, 255, 255, 0.2);
                border-radius: 20px;
            }
            .box select option {
                padding: 30px;
            }
            .pagination a {
                color: black;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
                transition: background-color .3s;
                border-radius: 10px;
            }
            .pagination a.active {
                background-color: black;
                color: white;
                border-radius: 10px;
                font-weight: bold;
            }
            .pagination a:hover:not(.active) {
                background-color: #b0b0b0;
                border-radius: 10px;
                font-weight: bolder;
            }
        </style>
    </head>
    <body>
        <!--menu-->
        <jsp:include page="menu.jsp"></jsp:include>
        <c:set var="txt" value="${requestScope.txt}"></c:set>
            <!--list categories-->
            <div style="display: flex; justify-content: space-between">
                <div class="categories" style="width: 250px; justify-content: center;">

                    <ul id="myUL">
                    <c:forEach items="${listCategories}" var="o">
                        <li ><a style="${checkActive == o.caId?"font-size: 30px ; font-weight: bold":""}" href="categories?caId=${o.caId}">${o.caName}</a></li>
                        </c:forEach>
                </ul>
            </div>

            <!--            <div>
                            <div class="box" style="float: right; right: 0">
                                <select>
                                    <option>Option 1</option>
                                    <option>Option 2</option>
                                    <option>Option 3</option>
                                    <option>Option 4</option>
                                    <option>Option 5</option>
                                </select>
                            </div>
                        </div>-->
        </div>

        <!--list product-->

        <div class="product">
            <c:forEach items="${listProduct}" var="o">
                <div class="card">
                    <img src="${o.proImg}" style="width:100% ">
                    <a class="title" href="detail?proId=${o.proId}" style="padding: 1px 1px;" > ${o.proName}</a>
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

        <h1 style="${messDisplay}"> ${mess}</h1>

        <!--paging area-->
        <c:set var="caId" value="${requestScope.caId}"/>
        <div class="check" style="display: ${none1}">
            <div class="pagination" style="margin: auto; justify-content: center; margin-top: 30px; ">
                <a href="shopall?index=${indexNow - 1}">&laquo;</a>
                <c:forEach begin="1" end="${endPage}" var="o">
                    <a class="${indexNow == o? "active" : ""}" href="shopall?index=${o}">${o}</a>
                </c:forEach>
                <a href="shopall?index=${indexNow + 1}">&raquo;</a>
            </div>
        </div>


        <div class="check" style="display: ${none2}">
            <div class="pagination" style="margin: auto; justify-content: center; margin-top: 30px;">
                <a href="categories?indexCa=${indexNowCa - 1}&caId=${caId}">&laquo;</a>
                <c:forEach begin="1" end="${endPageCa}" var="o">
                    <a class="${indexNowCa == o ? "active" : ""}" href="categories?indexCa=${o}&caId=${caId}">${o}</a>
                </c:forEach>
                <a href="categories?indexCa=${indexNowCa + 1}&caId=${caId}">&raquo;</a>
            </div>
        </div>

        <c:set var="txt" value="${requestScope.txtSearch}"></c:set>
        <div class="check" style="display: ${none3}">
            <div class="pagination" style="margin: auto; justify-content: center; margin-top: 30px;">
                <a href="search?index3=${requestScope.indexNow3 - 1}&txtSearch=${txt}">&laquo;</a>
                <c:forEach begin="1" end="${requestScope.endPage3}" var="o">
                    <a class="${requestScope.indexNow3 == o ? "active" : ""}" href="search?index3=${o}&txtSearch=${txt}">${o}</a>
                </c:forEach>
                <a href="search?index3=${requestScope.indexNow3 + 1}&txtSearch=${txt}">&raquo;</a>
            </div>
        </div>



        <!--footer-->
        <jsp:include page="footer.jsp" ></jsp:include>
    </body>
</html>