<!DOCTYPE html>
<%@ page import="org.Admin.Services.*,java.util.*,org.Admin.Model.*"%>


<html>
<head>
    <title>Employee Table</title>
    <script>
        <%-- Check if the deleteSuccess attribute is set --%>
        <% if (request.getAttribute("deleteSuccess") != null && (Boolean) request.getAttribute("deleteSuccess")) { %>
            <%-- Show alert if the attribute is set and is true --%>
            window.onload = function() {
                alert("Employee deleted successfully!");
            }
        <% } %>
    </script>
</head>
<body>

<table class="table table-bordered border-danger">
      <thead>
        <tr>
          <th>Id</th>
          <th>Name</th>
          <th>Contact</th>
          <th>Department</th>
          <th>Position</th>
          <th>Status</th>
       
        </tr>
      </thead>

      <tbody id="tableBody">  
        <%        
        String str=request.getParameter("dd");
        %>
          <tr>
           <td> 
           
           <a href='Att?AA=<%=str%>'>
  <button type="button" class="btn btn-danger" >OK</button>
       </a>
           
           
            </td> 
            </tr>
        
          <tr>
            <td colspan="12" style="color: red;">Employee Table is Empty</td>
          </tr>
       
               
           
      </tbody>
    </table>
    </body>
</html>