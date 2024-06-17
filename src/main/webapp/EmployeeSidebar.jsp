<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.emplyee.service.*,java.util.*,org.Employee.Model.*"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            display: flex;
            min-height: 100vh;
        }
        .sidebar {
            width: 250px;
            background-color: #f8f9fa;
            padding: 15px;
        }
        .content {
            flex-grow: 1;
            padding: 20px;
        }
        .sidebar a {
            display: block;
            padding: 10px;
            color: #000;
            text-decoration: none;
        }
        .sidebar a:hover {
            background-color: #e9ecef;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h4>Menu</h4>
        <a href="PersonalInfo.jsp">Profile</a>
         <a href="EmployeeSideAttedance.jsp">Attedance</a>
        <a href="EmployeeSalaryPage.jsp">Check Salary</a>
        <a href="EmployeeLogin.jsp">Logout</a>
         <br/><br/><br/><br/>
      
         <a href="EmployeeDashboard.jsp">
           <img src="Images/backArro.jpg" alt="Description_of_image" style="width:20px; height: 20px;">
          </a>        
                        
                   
        
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
