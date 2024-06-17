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
        <a href="#">Profile</a>
          <a href="EmployeeSideAttedance.jsp">Attedance</a>
          <a href="EmployeeSalaryPage.jsp">Check Salary</a>
         <a href="EmployeeLogin.jsp">Logout</a>
         <a href="EmployeeDashboard.jsp">Home</a>
         
             <br/><br/><br/><br/>
   <a href="EmployeeDashboard.jsp">
    <img src="Images/backArro.jpg" alt="Description_of_image" style="width:20px; height: 20px;">
</a>

    </div>
    <div class="content">
        <h2 class="mt-5">Employee Dashboard</h2>
        <table class="table table-bordered border-danger mt-3">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Address</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Department</th>
                    <th>Position</th>
                    <th>Joining Date</th>
                </tr>
            </thead>
            <tbody id="tableBody">
                <%
                    int eid = Integer.parseInt(session.getAttribute("empid").toString());
               
                    EmployeeInfoServices empservice = new EmployeeInfoServicesImpl();
                    List<EmployeeInfoModel> list = empservice.getProfile(eid);

                    if (list != null && !list.isEmpty()) {
                        for (EmployeeInfoModel eModel : list) {
                %>
                            <tr>
                                <td><%= eModel.getId() %></td>
                                <td><%= eModel.getName() %></td>
                                <td><%= eModel.getContact() %></td>
                                <td><%= eModel.getEmail() %></td>
                                <td><%= eModel.getGender() %></td>
                                <td><%= eModel.getAddress() %></td>
                                <td><%= eModel.getUsername() %></td>
                                <td><%= eModel.getPassword() %></td>
                                <td><%= eModel.getDepartment() %></td>
                                <td><%= eModel.getPosition() %></td>
                                <td><%= eModel.getJoining_date() %></td>
                            </tr>
                <%
                        }
                    } else {
                %>
                        <tr>
                            <td colspan="11" style="color: red;">Employee Table is Empty</td>
                        </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
