<%-- 
    Document   : card
    Created on : Mar 4, 2023, 10:00:57 AM
    Author     : dinhd513
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/cart.css"/>
        <style>
            .change{
                display: none;
                text-decoration: none;
                font-weight: normal;
            }
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div style="width: 100%; height: 100%">
                <div class="card">
                    <div class="row">
                        <div class="col-md-8 cart">
                            <div class="title">
                                <div class="row">
                                    <div class="col"><h4><b>Shopping Cart</b></h4></div>
                                    <div class="col align-self-center text-right text-muted">${sizeOfCart} items</div>
                            </div>
                        </div>
                        <c:set value="${sessionScope.account}" var="accountSession"/>
                        <c:set value="${sessionScope.cart}" var="cartSession"/>

                        <c:forEach items="${cartSession.listItems}" var="item">

                            <div class="row border-top border-bottom">
                                <div class="row main align-items-center">
                                    <div class="col-2"><img class="img-fluid" src="${item.product.proImg}"></div>
                                    <div class="col">
                                        <div class="row text-muted">${item.product.proName}</div>
                                        <div class="row">${item.product.proPrice} $</div>
                                    </div>
                                    <div class="col">
                                        <a href="processCart?num=-1&proId=${item.product.proId}">-</a> 
                                        <a  href="#" class="border">${item.quantity}</a>
                                        <a href="processCart?num=1&proId=${item.product.proId}">+</a>
                                    </div>
                                    ${item.quantity*item.price} $
                                    <div class="col" > 
                                        <form action="processCart" method="post">
                                            <input type="hidden" name="proId" value="${item.product.proId}"/>
                                            <input type="submit" class="close" value="&#10005"  style="background-color: white; border: none; margin: auto"/>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>


                        <div class="back-to-shop"><a href="shopall">&leftarrow;</a><span class="text-muted">Back to shop</span></div>
                    </div>
                    <div class="col-md-4 summary">
                        <div><h5><b>Summary</b></h5></div>
                        <hr>
                        <c:if test="${accountSession == null}" >
                            
                            <a  style="padding: 10px;"> User information not found . </a> <br><br><br><br><br><br><br><br><br><br><br><br><br>
<!--                            <a href="checkOut" style="padding: 10px;">  </a> <br>-->
                            <form action="checkOut"method="get"> <input type="submit" value="Must be Login."></form>
                            <form action="signup"method="post"> <input type="submit" value="Or SignUp if you don't have account"></form> 
                            
                        </c:if>
                        <c:if test="${accountSession != null}" >
                            <form action="changeInfo" method="post">
                                <input type="hidden" name="accId" value="${sessionScope.account.accId}"/>
                                <input type="hidden" name="accPass" value="${sessionScope.account.accPassword}"/>

                                <div style="display: ">
                                    <p>Name</p>
                                    <input type="text"class="text-muted" name="userName" value="${sessionScope.account.name}" required/>
                                    <a  class="change" style="display: ${block}">New Name : ${newname}</a>
                                    <p>Phone</p>
                                    <input type="text"class="text-muted" name="userPhone" value="${sessionScope.account.phone}" required/>
                                    <a class="change" style="display: ${block}" > New Phone : ${newPhone}</a>
                                    <p>Address</p>
                                    <input type="text"class="text-muted" name="userAddress" value="${sessionScope.account.address}" required/>
                                    <a class="change" style="display: ${block}">New Address : ${newAddress}</a>
                                </div>
                                <input type="submit" value="Change info"/>
                                <h6 style="margin-top: 30px">${mess}</h6>
                                <!--                            <div style="display: none" >
                                                            <p>Name</p>
                                                            <input type="text"class="text-muted" name="userName" value="${requestScope.userName}" required/>
                                                            
                                                            <p>Phone</p>
                                                            <input type="text"class="text-muted" name="userPhone" value="${requestScope.userPhone}" required/>
                                
                                                            <p>Address</p>
                                                            <input type="text"class="text-muted" name="userAddress" value="${requestScope.userAddress}" required/>
                                                            
                                                            </div>-->


                            </form>
                        </c:if>

                        <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                            <div class="col">TOTAL PRICE</div>
                            <div class="col text-right"> ${sessionScope.total} $</div>
                        </div>
                        <button class="btn" ><a href="checkOut" style="color: white; text-decoration: none">CHECKOUT</a></button>
                    </div>
                </div>

            </div>

        </div>

        <jsp:include page="footer.jsp" ></jsp:include>

    </body>
</html>
