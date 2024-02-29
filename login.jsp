<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1s0l4+jmMmxxY6ii++3G5vAr+e6Z3wvF5V5HApJ5zAFaa4tSMZ3xxwXMtk8c/2k" crossorigin="anonymous">
 <style>
        /* Additional CSS styles */
        body {
           background-image: url('resources/img/a.jpg');
        }
        .login-form {
            max-width: 300px;
            margin: 0 auto;
            margin-top: 100px;
        }
        header {
            background-color: rgba(255, 255, 255, 0.7);
            padding: 20px;
            width: 100%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .container {
            width: 40%;
            background-color: rgba(255, 255, 255, 0.7); /* Adjust opacity by changing the fourth parameter (0.0 to 1.0) */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 20px; /* Add margin to the top */
        }
        h2 {
            text-align: center;
            color: #007bff;
            margin-top: 0;
        }
        .form-label {
            color: #000000;
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
        .alert-danger {
            color: #721c24;
            background-color: #f8d7da;
            border-color: #f5c6cb;
            position: relative;
            padding: 0.75rem 1.25rem;
            margin-bottom: 1rem;
            border: 1px solid transparent;
            border-radius: 0.25rem;
        }
        /* Internal CSS ends here */
    </style>
</head>
<body>
    <div class="container">
        <div class="login-form">
            <h2 class="text-center mb-4">Login</h2>
            <form action="handelLogin" method="post">
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" id="username" name="username" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" id="password" name="password" class="form-control" required>
                </div>
                <div class="d-grid gap-2 text-center">
                    <button type="submit" class="btn btn-primary ">Login</button>
                </div>
                <%-- Check for error parameter and display error message --%>
                <c:if test="${param.error != null}">
                    <div class="alert alert-danger mt-3" role="alert">
                        Invalid username or password. Please try again.
                    </div>
                </c:if>
            </form>
            <div class="text-center mt-3">
    			<p>Don't have an account? <a href="${pageContext.request.contextPath}/create_account">Create one</a></p>
			</div>
        </div>
    </div>

    <!-- Bootstrap JS (optional, for certain components) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-bGy3fO9HTDq0NTQQk6MW0zVZSl4pJf/zpSqbRb6PQbgtU0FeTpB9EuXcaG0OoNaP" crossorigin="anonymous"></script>
</body>
</html>
