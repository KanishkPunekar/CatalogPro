<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Account</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1s0l4+jmMmxxY6ii++3G5vAr+e6Z3wvF5V5HApJ5zAFaa4tSMZ3xxwXMtk8c/2k" crossorigin="anonymous">
    <style>
        /* Additional CSS styles */
        body {
            background-image: url('resources/img/a.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 35%;
            background-color: rgba(255, 255, 255, 0.9); /* Adjust opacity by changing the fourth parameter (0.0 to 1.0) */
            border-radius: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            transition: all 0.3s ease;
        }
        .container:hover {
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.2);
        }
        h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 30px;
        }
        .form-label {
            color: #000000;
            text-align: left;
        }
        .form-control {
            border-radius: 20px;
            border: 1px solid #ced4da;
            transition: border-color 0.3s ease;
        }
        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }
        .btn {
            display: block;
            margin: 0 auto; /* Center the button horizontally */
            padding: 12px 30px;
            text-decoration: none;
            border: none;
            border-radius: 25px;
            transition: background-color 0.3s, color 0.3s;
            cursor: pointer;
        }
        .btn-primary {
            background-color: #007bff;
            color: #ffffff;
            width: 45%;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="login-form">
            <h2>Create Account</h2>
            <form action="register" method="post">
                <div class="mb-3 row">
                    <label for="id" class="form-label col-sm-4">ID</label>
                    <div class="col-sm-8">
                        <input type="text" id="id" name="id" class="form-control" required>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="username" class="form-label col-sm-4">Username</label>
                    <div class="col-sm-8">
                        <input type="text" id="username" name="username" class="form-control" required>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="email" class="form-label col-sm-4">Email</label>
                    <div class="col-sm-8">
                        <input type="email" id="email" name="email" class="form-control" required>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="password" class="form-label col-sm-4">Password</label>
                    <div class="col-sm-8">
                        <input type="password" id="password" name="password" class="form-control" required>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="confirmPassword" class="form-label col-sm-4">Confirm Password</label>
                    <div class="col-sm-8">
                        <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" required>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Create Account</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS (optional, for certain components) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-bGy3fO9HTDq0NTQQk6MW0zVZSl4pJf/zpSqbRb6PQbgtU0FeTpB9EuXcaG0OoNaP" crossorigin="anonymous"></script>
</body>
</html>
