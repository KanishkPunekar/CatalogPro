<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Hello, world!</title>
    <style>
        /* Internal CSS starts here */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('resources/img/a.jpg'); /* Updated image location */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
            background-color: #f8f9fa; /* Fallback color if image is not available */
        }

        .container {
            margin-top: 50px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        h1 {
            color: #007bff; /* Adjusted heading color */
            text-align: center; /* Center align the heading */
            margin-top: 0; /* Remove default margin */
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
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Your custom CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
</head>
<body>
<div class="container mt-3">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <h1 class="mb-3" style="color: #007bff;">Fill the product detail</h1>> <!-- Removed "text-center" class from heading -->
            <form action="handle-product" method="post">
                <div class="form-group">
                    <label for="name">Product Name</label>
                    <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name" placeholder="Enter the product name here">
                </div>
                <div class="form-group">
                    <label for="description">Product Description</label>
                    <textarea class="form-control" name="description" id="description" rows="5" placeholder="Enter the product description"></textarea>
                </div>
                <div class="form-group">
                    <label for="price">Product Price</label>
                    <input type="text" placeholder="Enter Product Price" name="price" class="form-control" id="price">
                </div>
                <div class="container text-center">
                    <a href="${pageContext.request.contextPath}/home" class="btn btn-outline-danger">Back</a>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
