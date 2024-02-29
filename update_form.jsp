<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Product Detail</title>

    <style>
        /* Internal CSS */
		body {
		    font-family: Arial, sans-serif;
		    margin: 0;
		    padding: 0;
		    background-image: url('<c:url value="/resources/img/a.jpg"/>');
		    background-size: cover;
		    background-position: center;
		    background-repeat: no-repeat;
		    min-height: 100vh;
		    display: flex;
		    flex-direction: column;
		    justify-content: flex-start;
		    align-items: center;
		}

        .container {
            margin-top: 50px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        h1 {
            color: #007bff;
        }

        .btn-outline-danger {
            color: #dc3545;
            border-color: #dc3545;
        }

        .btn-outline-danger:hover {
            color: #fff;
            background-color: #dc3545;
            border-color: #dc3545;
        }
    </style>
</head>
<body>

<div class="container mt-3">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <h1 class="text-center mb-3">Change Product Detail</h1>
            <form action="${pageContext.request.contextPath }/handle-product" method="post">

                <input type="hidden" value="${product.id }" name="id"/>

                <div class="form-group">
                    <label for="name">Product Name</label>
                    <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name" placeholder="Enter the product name here"
                           value="${product.name }">
                </div>

                <div class="form-group">
                    <label for="description">Product Description</label>
                    <textarea class="form-control" name="description" id="description" rows="5" placeholder="Enter the product description">${product.description }</textarea>
                </div>

                <div class="form-group">
                    <label for="price">Product Price</label>
                    <input type="text" placeholder="Enter Product Price" name="price" class="form-control" id="price" value="${product.price }">
                </div>

                <div class="container text-center">
                    <a href="${pageContext.request.contextPath}/home" class="btn btn-outline-danger">Back</a>
                    <button type="submit" class="btn btn-primary">Update</button>
                </div>

            </form>
        </div>
    </div>
</div>

</body>
</html>
