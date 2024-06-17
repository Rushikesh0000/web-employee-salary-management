<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Sidebar with Bootstrap</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    
  
</head>
<body>
  <div class="d-flex" id="wrapper" style="height:100vh;">
        <!-- Sidebar -->
        <div class="bg-dark border-right" id="sidebar-wrapper" style="padding-top:40px;">
            <div class="sidebar-heading text-white " style="padding-top:40px;text-align:center;padding-bottom:20px;">Menu 
            
            
                  <% 
                     HttpSession s=request.getSession(true);
                    String user= s.getAttribute("user").toString();
                    String pass= s.getAttribute("password").toString();
                    %>
            
            </div>
               <div class="list-group list-group-flush" >
                <a href="#departmentSubmenu" class="list-group-item list-group-item-action bg-dark text-white" data-toggle="collapse">Department</a>
                <div class="collapse" id="departmentSubmenu">
                   <a href="AddDepartment.jsp" class="list-group-item list-group-item-action bg-dark text-white pl-4" style="text-decoration: none;">Add Department</a>

                    <a href="ViewDepartment.jsp" class="list-group-item list-group-item-action bg-dark text-white pl-4">View Department</a>
                </div>
                <a href="#employeeSubmenu" class="list-group-item list-group-item-action bg-dark text-white" data-toggle="collapse">Employee Master</a>
                <div class="collapse" id="employeeSubmenu">
                    <a href="AddEmployee.jsp" class="list-group-item list-group-item-action bg-dark text-white pl-4">Add Employee</a>
                    <a href="ViewEmployee.jsp" class="list-group-item list-group-item-action bg-dark text-white pl-4">View Employee</a>
                </div>
                <a href="#attendanceSubmenu" class="list-group-item list-group-item-action bg-dark text-white" data-toggle="collapse">Attendance</a>
                <div class="collapse" id="attendanceSubmenu">
                    <a href="TrackAttedance.jsp" class="list-group-item list-group-item-action bg-dark text-white pl-4">Track Attendance</a>
                    <a href="View_Attedance.jsp" class="list-group-item list-group-item-action bg-dark text-white pl-4">View Attendance</a>
                    <a href="BetweenAttedance.jsp" class="list-group-item list-group-item-action bg-dark text-white pl-4">Two Date Attendance</a>
                </div>
                <a href="#salarySubmenu" class="list-group-item list-group-item-action bg-dark text-white" data-toggle="collapse">Salary Module</a>
                <div class="collapse" id="salarySubmenu">
                    <a href="Salary.jsp" class="list-group-item list-group-item-action bg-dark text-white pl-4">Check Salary</a>
                </div>
                <a href="Admindashbord.jsp" class="list-group-item list-group-item-action bg-dark text-white">Home</a>
                <a href="AdminLogin.jsp" class="list-group-item list-group-item-action bg-dark text-white">Sign out</a>            
            </div>
      
     
   

</body>
</html>
