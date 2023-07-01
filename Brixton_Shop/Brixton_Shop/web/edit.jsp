<%-- 
    Document   : edit
    Created on : Mar 2, 2023, 2:20:05 PM
    Author     : dinhd513
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
            body {
                font-family: 'Eczar', serif;
                background-color:#323232     ;
                
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
                display: block;
/*                position: fixed;*/

                margin: 50px auto;
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
            input{
                border-radius: 15px;
            }
            
        </style>
    </head>
    <body>
        <div class="form-popup" id="myForm">
                <form action="edit" method="post" class="form-container" it>
                        <h1 style="text-align: center">Edit this Product</h1>
                        <input type="hidden"  name="proId" required value="${product.proId}">
                        <label for="proName"><b>${requestScope.mess}</b></label>
                        <label for="proName"><b>Product Name</b></label>
                        <input type="text" placeholder="Enter Name" name="proName" required value="${product.proName}">

                        <label for="proImg"><b>Product Image Link</b></label>
                        <input type="text" placeholder="Enter Image Link" name="proImg" required value="${product.proImg}">
                        
                        <input type="file" placeholder="Enter Image Link" name="proImgNew">
                        
                        <br> <br>
                        <label for="proPrice"><b>Product Price</b></label>
                        <input type="number" placeholder="Enter Price" name="proPrice" required value="${product.proPrice}" min="0">
                        <label for="country">Categories</label><!-- comment -->                       
                        <select id="country" name="caId"  style="margin-right: 30px " >
                            <c:forEach items="${listCategories}" var="o">
                                <option value="${o.caId}">${o.caName}</option>
                            </c:forEach>
                        </select>
                        <label for="country">Collection</label><!-- comment -->
                        <select id="country" name="coId">
                                
                            <c:forEach items="${listCollections}" var="o">
                                 <option  value="${o.coId}">${o.coName}</option>
                            </c:forEach>
                        </select> <br><br>
                        <label for="country" >please select category and collection</label> <br> <br>
                        <label for="proDetail"><b>Product Detail</b></label>
                        <textarea value="" name="proDetail" placeholder="Write something.." style="width: 100%;height:100px">${product.proDetail}</textarea>
                        <button type="submit" class="btn" >Edit</button>
                        <button type="button" class="btn cancel" > <a href="manage" style="text-decoration: none; color: white">Back</a></button>
                    </form>
                </div>
    </body>
</html>
