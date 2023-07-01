<%-- 
    Document   : admin
    Created on : Feb 27, 2023, 4:27:34 PM
    Author     : dinhd513
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
        <link rel="stylesheet" href="css/admin.css">
        <style>
            body {
                font-family: 'Eczar', serif;

            }
            * {
                box-sizing: border-box;
            }

            /* Button used to open the contact form - fixed at the bottom of the page */
            .open-button {
                background-color: white;
                color: black;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                opacity: 0.8;
                bottom: 23px;
                right: 28px;
            }

            /* The popup form - hidden by default */
            .form-popup {
                display: none;
                /*                position: fixed;*/
                margin: auto;
                width: 50%;
                border: 3px solid #f1f1f1;

            }

            /* Add styles to the form container */
            .form-container {
                max-width: 100%;
                padding: 10px;
                background-color: white;
            }

            /* Full-width input fields */
            .form-container input[type=text], .form-container input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                border: none;
                background: #f1f1f1;
            }

            /* When the inputs get focus, do something */
            .form-container input[type=text]:focus, .form-container input[type=password]:focus {
                background-color: white;
                outline: none;
            }

            /* Set a style for the submit/login button */
            .form-container .btn {
                background-color: #003333;
                color: white;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                width: 100%;
                margin-bottom:10px;
                opacity: 0.8;
            }

            /* Add a red background color to the cancel button */
            .form-container .cancel {
                background-color: black;
            }

            /* Add some hover effects to buttons */
            .form-container .btn:hover, .open-button:hover {
                opacity: 1;
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

            .footer{
                background-color: black;
                color: white;
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>   
            <div class="navbar_menu" id="myNavbar"> 
                <button class="open-button" onclick="openForm()">Add Product</button>

                <a href="usermanage">User</a>
                <a href="orderManager">Order</a>
                <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
            </div>
            <label> ${mess} </label>
        <div class="form-popup" id="myForm">
            <form action="add" method="get" class="form-container">
                <h1 style="text-align: center">Add a Product</h1>

                <label for="proName"><b>Product Name</b></label>
                <input type="text" placeholder="Enter Product Name" name="proName" required>

                <label for="proImg"><b>Product Image</b></label>
                <input type="file" placeholder="Product Image" name="proImg" required> 
                <br> <br>

                <label for="proPrice"><b>Product Price</b></label>
                <input type="number" placeholder="Product Price" name="proPrice" required min="0" style="border-radius: 10px">
                <br> <br>
                <label for="country">Categories</label><!-- comment -->                       
                <select id="country" name="caId" style="margin-right: 30px ">
                    <c:forEach items="${listCategories}" var="o">
                        <option value="${o.caId}">${o.caName}</option>
                    </c:forEach>
                </select>
                <label for="country">Collection</label>
                <select id="country" name="coId">  
                    <c:forEach items="${listCollections}" var="o">
                        <option value="${o.coId}">${o.coName}</option>
                    </c:forEach>
                </select> <br><br>

                <input type="text" placeholder="If you want add new collection, Input, Please..." name="addColection" >
                <label for="proDetail"><b>Product Detail</b></label>
                <textarea name="proDetail" placeholder="Write something.." style="width: 100%;height:100px"></textarea>
                <button type="submit" class="btn" style="background-color: black">Add</button>
                <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
            </form>
        </div>

        <div class="body" style="display: none">
            <div class="product" style="width: 60%">
                <c:forEach items="${listProduct}" var="o">
                    <div class="card" style="width: 300px ; padding: 20px">
                        <a class="title">ID: ${o.proId}</a>
                        <img src="${o.proImg}" style="width:100% ">
                        <a class="title" style="padding: 0"> ${o.proName}</a>
                        <p> ${o.proPrice} $</p>
                        <div style="display: flex; justify-content: space-around; background-color: black; border-radius:10px ">
                            <div style="margin: 10px ;">
                                <a href="getproduct?proId=${o.proId}" style="color: white; padding: 10px ; font-family: 'Eczar', serif;">Edit</a>
                            </div>
                            <div style="margin: 10px ;">
                                <a href="delete?proId=${o.proId}" style="color: red; padding: 10px ; font-family: 'Eczar', serif;">Delete</a>
                            </div> 
                        </div>          
                    </div>
                </c:forEach>
            </div>

            

            <!--test--> 

            <div class="check" style="display: ${none1}">
                <div class="pagination" style="margin: auto; justify-content: center; margin-top: 30px; ">
                    <a href="manage?index=${indexNow - 1}">&laquo;</a>
                    <c:forEach begin="1" end="${endPage}" var="o">
                        <a class="${indexNow == o? "active" : ""}" href="manage?index=${o}">${o}</a>
                    </c:forEach>
                    <a href="manage?index=${indexNow + 1}">&raquo;</a>
                </div>
            </div>

        </div>
                
                <table border="1" style="justify-content: center; margin: auto; width: 80%">
                <thead>
                    <tr border="1">
                        <th>ID</th>
                        <th>NAME</th>
                        <th>IMAGE</th>
                        
                        <th>DETAIL</th>
                        <th>PRICE</th>
                        <!--<th>CAID</th>-->
                        <!--<th>COID</th>-->
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listProduct}" var="o">
                        <tr>
                            <td style="width: 3%; font-weight: bolder; text-align: center;">${o.proId}</td>
                            <td style="width: 15%; font-weight: bolder">${o.proName}</td>
                            <td style="width: 15%"><img src="${o.proImg}" style="width:100px ">
                            </td>
                            <td style="width: 40%">${o.proDetail}</td>
                            <td style="width: 10% ; font-weight: bolder; text-align: center; font-size: larger">${o.proPrice}</td>
                            <td style="width: 17%">
                            <div style="display: flex; justify-content: space-around; background-color: white; border-radius:10px ">
                            <div style="margin: 5px ;">
                                <a href="getproduct?proId=${o.proId}" style="color: black;; font-weight: bolder; font-family: 'Eczar', serif; ">Edit</a>
                            </div>
                            <div style="margin: 5px ;">
                                <a href="delete?proId=${o.proId}" style="color: red;; font-weight: bolder ; font-family: 'Eczar', serif;">Delete</a>
                            </div> 
                        </div>  
                            </td>
                            <!--
                            <td></td>-->
                        </tr>
                        
                    </c:forEach>

                </tbody>
            </table>
            <div class="check" style="display: ${none1}">
                <div class="pagination" style="margin: auto; justify-content: center; margin-top: 30px; ">
                    <a href="manage?index=${indexNow - 1}">&laquo;</a>
                    <c:forEach begin="1" end="${endPage}" var="o">
                        <a class="${indexNow == o? "active" : ""}" href="manage?index=${o}">${o}</a>
                    </c:forEach>
                    <a href="manage?index=${indexNow + 1}">&raquo;</a>
                </div>
            </div>

        <jsp:include page="footer.jsp" ></jsp:include>
        <script>
            function openForm() {
                document.getElementById("myForm").style.display = "block";
            }

            function closeForm() {
                document.getElementById("myForm").style.display = "none";
            }
        </script>
    </body>
</html>
