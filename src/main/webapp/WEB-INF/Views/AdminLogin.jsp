<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <style>
        body {
            background: linear-gradient(135deg, #74ebd5, #acb6e5);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-clean {
            padding: 80px 0;
        }

        .login-clean form {
            max-width: 400px;
            width: 90%;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 8px;
            color: #505e6c;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .login-clean form:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .login-clean .illustration {
            text-align: center;
            padding: 0 0 20px;
            font-size: 80px;
            color: #f4476b;
            animation: bounce 1s infinite alternate;
        }

        @keyframes bounce {
            from {
                transform: translateY(0);
            }
            to {
                transform: translateY(-10px);
            }
        }

        .login-clean form .form-control {
            background: #f7f9fc;
            border: none;
            border-bottom: 2px solid #dfe7f1;
            border-radius: 0;
            box-shadow: none;
            outline: none;
            color: inherit;
            text-indent: 10px;
            height: 45px;
            transition: border-bottom-color 0.3s ease;
        }

        .login-clean form .form-control:focus {
            border-bottom-color: #f4476b;
        }

        .login-clean form .btn-primary {
            background: #f4476b;
            border: none;
            border-radius: 4px;
            padding: 12px;
            box-shadow: none;
            margin-top: 26px;
            transition: background 0.3s ease;
        }

        .login-clean form .btn-primary:hover {
            background: #eb3b60;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        .login-clean form .forgot {
            display: block;
            text-align: center;
            font-size: 14px;
            color: #6f7a85;
            opacity: 0.9;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .login-clean form .forgot:hover {
            color: #f4476b;
            opacity: 1;
        }
    </style>
</head>

<body>
    <div class="login-clean">
        <h3>${error}</h3>
        <form action="adminloginhandle" method="post">
            <h2 class="sr-only">Login Form</h2>
            <div class="illustration"><i class="icon ion-ios-navigate"></i></div>
            <div class="form-group">
                <input class="form-control" type="text" name="username" placeholder="Username" required>
            </div>
            <div class="form-group">
                <input class="form-control" type="password" name="password" placeholder="Password" required>
            </div>
            <div class="form-group">
                <button class="btn btn-primary btn-block" type="submit">Log In</button>
            </div>
           
        </form>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>

</html>
