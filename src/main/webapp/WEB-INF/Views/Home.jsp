<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background: linear-gradient(135deg, #f4f4f9, #c2e9fb);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
            background-color: #fff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            max-width: 400px;
            width: 100%;
            margin: 20px;
        }

        .container:hover {
            transform: translateY(-5px);
        }

        .title {
            font-size: 2rem;
            margin-bottom: 20px;
            color: #333;
        }

        .login-box {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .login-option {
            width: 100%;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .admin-login {
            background-color: #4ecdc4;
        }

        .student-login {
            background-color: #ff6b6b;
        }

        .login-option:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .login-btn {
            display: block;
            padding: 15px;
            text-decoration: none;
            font-size: 1.2rem;
            color: white;
            background-color: transparent;
            border: none;
            text-align: center;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .admin-login .login-btn {
            color: #fff;
            text-decoration: none;
        }

        .student-login .login-btn {
            color: #fff;
        }

        .login-btn:hover {
            text-decoration: none;
            color: #ffd700; /* Gold color on hover */
        }

        /* Responsive styling */
        @media screen and (min-width: 768px) {
            .login-box {
                flex-direction: row;
                justify-content: space-between;
            }

            .login-option {
                width: 48%;
            }

            .container {
                max-width: 600px;
            }
        }

        @media screen and (min-width: 1024px) {
            .title {
                font-size: 2.5rem;
            }

            .container {
                padding: 50px;
            }

            .login-btn {
                font-size: 1.4rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="title">Login</h2>
        <div class="login-box">
            <div class="login-option admin-login">
                <a href="${pageContext.request.contextPath}/adminlogin" class="login-btn">Login as Admin</a>
            </div>
            <div class="login-option student-login">
                <a href="${pageContext.request.contextPath}/studentlogin" class="login-btn">Login as Student</a>
            </div>
        </div>
    </div>
</body>
</html>
