<%-- 
    Document   : menu
    Created on : Feb 24, 2023, 7:05:41 PM
    Author     : dinhd513
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Load an icon library -->

<div class="wel">
    <c:if test="${sessionScope.account.role ==0}">
        <a href="manage" style="color: white"><strong>Manage</strong> your shop</a>
    </c:if>
    <c:if test="${sessionScope.account.role ==1 || sessionScope.account== null}">
        <h6 href=""><strong>Welcome</strong> to our shop</h6>
    </c:if>

</div>
<!-- Top navigation -->
<div class="topnav">
    <!-- Centered link -->
    <div class="topnav-centered">
        <a href="home" 
           style="color: black; font-size: 55px; font-family: 'Lobster', cursive;"><strong>Brixton</strong></a>
    </div>

    <!-- Left-aligned links (default) -->
    <a href="shopall" style="font-size: 25px">Shop All</a>
    <a href="collection?coId=1" style="font-size: 25px">Collection</a>

    <!-- Right-aligned links -->



    <div class="topnav-right" style="display: flex">
        <c:set var="sizeOfCart" value="${sessionScope.sizeOfCart} ${requestScope.sizeOfCart}"/> 
        <div> <a style="font-size: 25px" href="cart.jsp"> <i class="fa fa-shopping-cart" style="font-size:24px"></i> ${sizeOfCart}</a></div>

        <c:if test="${sessionScope.account != null}">
            <div>  <a style="font-size: 25px" href ="userInfo?accId=${sessionScope.account.accId}">Hello ${sessionScope.account.name}</a></div>
            <div> <a style="font-size: 25px" href="logout">Logout</a></div>
        </c:if>
        <c:if test="${sessionScope.account == null}">
            <div> <a style="font-size: 25px" href="login.jsp">Login</a></div>
        </c:if>



        <c:if test="${sessionScope.account.role ==0}">
            <form action="search" method="post" class="example" style="float: left">
                <input type="text" name="searchtxt" placeholder="Search.." style="width: 100px">              
                <button type="submit" ><i class="fa fa-search" style="color: rgb(0 , 0, 0); float: left"></i></button>
            </form>
        </c:if>

        <c:if test="${sessionScope.account.role ==1 ||sessionScope.account== null}">
            <form action="search" method="get"class="example" style="float: left">
                <input type="hidden" name="index3" placeholder="Search.." style="width: 100px" value="1">    
                <input type="text" name="searchtxt" placeholder="Search.." style="width: 100px">              
                <button type="submit" ><i class="fa fa-search" style="color: rgb(0 , 0, 0); float: left"></i></button>
            </form>
        </c:if>



    </div>
</div>