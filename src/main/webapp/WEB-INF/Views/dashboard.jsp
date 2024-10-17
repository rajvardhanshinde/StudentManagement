<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #f4f4f9;
    }

    .card {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
        text-align: center;
        transition: transform 0.3s ease-in-out;
    }

    .card:hover {
        transform: translateY(-5px);
    }

    .card h2 {
        color: #333;
        margin-bottom: 20px;
    }

    .card p {
        font-size: 1.1rem;
        color: #555;
    }

    .card b {
        color: #e91e63;
    }

    @media (max-width: 768px) {
        .card {
            padding: 15px;
        }

        .card p {
            font-size: 1rem;
        }
    }
</style>
</head>
<body>

<div class="card">
    <h2>Welcome!</h2>
    <p>Welcome <b>${student.name}</b> to your dashboard</p>
</div>

</body>
</html>
