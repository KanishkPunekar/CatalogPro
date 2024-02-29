<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        }

        header {
            background-color: rgba(255, 255, 255, 0.7);
            padding: 20px;
            width: 100%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .container {
            width: 80%;
            background-color: rgba(255, 255, 255, 0.7); /* Adjust opacity by changing the fourth parameter (0.0 to 1.0) */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 20px; /* Add margin to the top */
        }

        h1 {
            text-align: center;
            color: #007bff;
            margin-top: 0;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
        }

        .table th, .table td {
            border: 1px solid #dee2e6;
            padding: 12px;
            text-align: left;
        }

        .table th {
            background-color: #007bff;
            color: #ffffff;
        }

        .table td {
            background-color: #ffffff;
        }

        .font-weight-bold {
            font-weight: bold;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            border: none;
            border-radius: 4px;
            transition: background-color 0.3s, color 0.3s;
            cursor: pointer;
        }

        .btn-primary {
            background-color: #007bff;
            color: #ffffff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        /* Internal CSS ends here */
    </style>
</head>
<body>

<header>
    <h1>CatalogPro</h1>
</header>

<div class="container">
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Product Name</th>
                <th>Product Description</th>
                <th>Price</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${products }" var="p">
                <tr>
                    <td>${p.id }</td>
                    <td>${p.name }</td>
                    <td>${p.description }</td>
                    <td class="font-weight-bold">&#x20B9;${p.price }</td>
                    <td>
                        <a href="delete/${p.id }" class="btn btn-primary">Delete</a>
                        <a href="update/${p.id }" class="btn btn-primary">Update</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div style="text-align: center;">
        <a href="add-product" class="btn btn-primary">Add Product</a>
    </div>
</div>

</body>
</html>
