<%@ page import="org.Admin.Services.*,java.util.*,org.Admin.Model.*,java.time.LocalDate,java.time.format.DateTimeFormatter"%>
       
        
<table class="table table-bordered border-danger">
    <thead>
        <tr>
            <th>Employee id</th>
            <th>Employee Name</th>
            <th>Contact</th>
            <th>Position</th>
            <th>Check Salary</th>
        </tr>
    </thead>
    <tbody id="tableBody">
        <% 
        String name = request.getParameter("st");
        String startdate = request.getParameter("sd");
        String dep = request.getParameter("dept");
   
        
        TrackAttendanceService empservices = new TrackAttendanceServiceImpl();
        
        List<SalaryTrack> list = empservices.salaryTrack(name,dep);

        
        if (list != null && !list.isEmpty()) 
        {
            for (SalaryTrack sTrack : list)
            {
        
        %>
      
        <tr>
            <td><%=sTrack.getId()%></td>
            <td><%=sTrack.getName()%></td>
            <td><%=sTrack.getContact()%></td>
            <td><%=sTrack.getPosition()%></td>
            <td>
    <form action="CheckSalary.jsp" method="post">
        <input type="hidden" name="eid" value="<%=sTrack.getId()%>">
        <input type="hidden" name="month" value="<%=startdate%>">
        <button type="submit" class="btn btn-success" >CHECK</button>
    </form>
           </td>
        </tr>
       
        <% 
            }
            %>    
            <% 
            
        } else { 
        %>
        
        <tr>
            <td colspan="4" style="color: red;">Employee Table is Empty</td><td></td>
        </tr>
      
        <% 
        } 
        %> 
    </tbody>
    
    
</table>
 