<%@ page import="org.Admin.Services.*,java.util.*,org.Admin.Model.*"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Department Data</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
<script type="text/javascript">
    function Show() {
        let msg = document.getElementById("ss");
        
        if (msg !== null) {
            msg.style.color = "green";
            msg.innerHTML = "Deleting data...";
            
            setTimeout(function () {
                msg.innerHTML = "Deleted Successfully.....";
            }, 1000);
        }
    }
</script>

</head>

<body>
    
<table class="table table-bordered border-danger p-5" >
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Contact</th>
            <th>Email</th>
            <th>Gender</th>
            <th>Address</th>
            <th>UserName</th>
            <th>Password</th>
            <th>Department</th>
            <th>Position</th>
            <th>Joining_Date</th>
            <th>Delete</th>
        </tr>
    </thead>

    <tbody id="tableBody">  
        <% 
        String search = request.getParameter("s");
        int department = Integer.parseInt(request.getParameter("f"));
        
        
        EmployeeInfo empservice = new EmployeeInfoImpl();
        List<AddEmployeeModel> list = empservice.searchEmployee(search, department); 
        
        if(list != null && !list.isEmpty()) {
            for(AddEmployeeModel eModel : list) {
         %>
        <tr>
            <td><%= eModel.getEid() %></td>
            <td><%= eModel.getEname() %></td>
            <td><%= eModel.getEcontact() %></td>
            <td><%= eModel.getEemail() %></td>
            <td><%= eModel.getEgender() %></td>
            <td><%= eModel.getEaddress() %></td>
            <td><%= eModel.getUsername() %></td>
            <td><%= eModel.getPassword() %></td>
            <td><%= eModel.getDepartment() %></td> 
            <td><%= eModel.getPosition() %></td> 
            <td><%= eModel.getJoining_date() %></td>      
<%--             <td><a href='Del?eid=<%= eModel.getEid() %>'><img src="Images/Delete.png" alt="" width="20" height="20" class="d-inline-block align-top" onclick="show()"/></a></td>  --%>
          <td><a href='Del?eid=<%= eModel.getEid() %>' class="btn btn-danger btn-sm" onclick="Show();">Delete</a></td>
        </tr>
        <% 
            }
           } else { 
            %> 
        <tr>
            <td colspan="12" style="color: red;">Employee Table is Empty</td><th></th>
        </tr>
        <% 
          } 
        %>
    </tbody>
</table>

<div id="ss"></div>
</body>
</html>
