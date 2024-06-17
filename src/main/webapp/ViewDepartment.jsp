<%@ page import="org.Admin.Services.*,java.util.*,org.Admin.Model.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Department Data</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
 <script type="text/JavaScript">
        function show() {
            var msg = document.getElementById("s");
            if (msg !=null) {
                msg.style.color = "green";
                msg.innerHTML = "Deleting data...";
                setTimeout(function () {
                	
                    msg.innerHTML = "Deleted Successfully.....";
                  alert("Successfully"); 
                },10); // 2 seconds delay
            }
        }
    </script>
</head>

<body>
    <div class="admin-dashboard" style="height:100vh;">
        <%@include file="AdminDashBoard.jsp"%>
    </div>
    
    
  <div class="container p-5">
        <div class="row justify-content-center form-container ">
        <table class="table table-bordered border-danger">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Department Id</th>
                    <th scope="col">Department Name</th>
                    <th scope="col">Delete </th>
                </tr>
            </thead>
            <tbody id="tableBody">
                <%
                    DepartmentServices empservice = new DepartmentServicesImpl();
                    List<Department2> list = empservice.DeptViewdata();
                    int count = 1;

                    if (list != null && !list.isEmpty()) {
                        for (Department2 eModel : list) {
                %>
                <tr>
                    <td><%= count++ %></td>
                    <td><%= eModel.getDeptname() %></td>
                   
                     <td><a href='Dell?did=<%= eModel.getDeptid() %>' class="btn btn-danger btn-sm" onclick="show();">Delete</a></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="2" class="text-center text-danger">Employee Table is Empty</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        
        <div id='s'></div>
    </div>
</div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
