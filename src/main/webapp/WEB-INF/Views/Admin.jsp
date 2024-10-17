<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 20px;
    padding: 0;
  }

  h1 {
    text-align: center;
    color: #333;
    margin-bottom: 20px;
  }

  .container {
    width: 90%;
    margin: 0 auto;
    max-width: 1200px;
  }

  .btn {
    padding: 8px 12px;
    font-size: 14px;
    font-weight: bold;
    border: none;
    color: white;
    cursor: pointer;
    border-radius: 5px;
    margin: 5px;
    transition: background-color 0.3s ease;
    text-decoration: none;
  }

  .btn-success {
    background-color: green;
  }

  .btn-success:hover {
    background-color: darkgreen;
  }

  .btn-back {
    background-color: red;
    text-decoration: none;
    color: white;
    padding: 8px 15px;
    font-weight: bold;
    border-radius: 5px;
  }

  .btn-back:hover {
    background-color: darkred;
  }

  .btn-warning {
    background-color: orange;
    color: white;
    text-decoration: none;
    padding: 8px 15px;
    font-weight: bold;
    border-radius: 5px;
  }

  .btn-warning:hover {
    background-color: darkorange;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    table-layout: fixed;
  }

  table, th, td {
    border: 1px solid #ddd;
  }

  th, td {
    padding: 12px;
    text-align: left;
    word-wrap: break-word;
  }

  th {
    background-color: #333;
    color: white;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  tr:hover {
    background-color: #ddd;
  }

  td {
    vertical-align: middle;
    overflow-wrap: break-word;
  }

  .action-buttons {
    display: flex;
    justify-content: center;
    flex-wrap: wrap; /* Allow buttons to wrap if space is insufficient */
    gap: 5px;
  }

  /* Responsive Styles */
  @media (max-width: 768px) {
    .container {
      width: 100%;
      margin: 0 10px;
    }

    table, th, td {
      display: block;
      width: 100%;
      box-sizing: border-box;
    }

    th::before, td::before {
      content: attr(data-label);
      position: absolute;
      left: 0;
      width: 45%;
      padding-left: 10px;
      font-weight: bold;
      text-align: left;
    }

    th {
      display: none; /* Hide headers on small screens */
    }

    tr {
      margin-bottom: 10px;
      border-bottom: 2px solid #ddd;
    }

    td {
      border: none;
      border-bottom: 1px solid #ddd;
      text-align: left;
      padding: 8px;
    }

    .btn {
      padding: 6px 10px;
      font-size: 12px;
    }

    .action-buttons {
      flex-direction: column;
      align-items: center;
      width: 100%; /* Ensure buttons fit within the table cell */
    }
  }

  @media (max-width: 480px) {
    .btn {
      padding: 5px 8px;
      font-size: 12px;
    }

    td {
      font-size: 14px;
    }
  }
</style>
</head>
<body>
<div class="container">
  <h1>Student Details</h1>
  <a href="${pageContext.request.contextPath}/add-student" class="btn btn-success">Add Student</a>
 
  <hr>
  <table class="table-primary">
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Contact</th>
        <th>Email</th>
        <th>Password</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${all}" var="a">
        <tr>
          <td data-label="ID">${a.id}</td>
          <td data-label="Name">${a.name}</td>
          <td data-label="Contact">${a.contact}</td>
          <td data-label="Email">${a.email}</td>
          <td data-label="Password">${a.password}</td>
          <td data-label="Action">
            <div class="action-buttons">
              <a href="delete/${a.id}" class="btn-back">Delete</a>
              <a href="update/${a.id}" class="btn-warning">Update</a>
            </div>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>
