<%@ page import="org.Admin.Services.*,java.util.*,org.Admin.Model.*"%>

<%
   
    int Pdays=0,Adays=0,Total=0;
       String fontColor="white";
       String backColor="black";
       String c="green";
       String k="red";

    String startdate = request.getParameter("sd");
    String enddate = request.getParameter("ed");
    String department=request.getParameter("dep");
    
    TrackAttendanceService empservice = new TrackAttendanceServiceImpl();
    
    List<BetweendateSearch> list = empservice.searchEmployee( startdate, enddate,department);
%>

<table class="table table-bordered border-danger">
    <thead style="background-color: <%= k%>; color: <%= fontColor %>;">
        <tr >
           <th>Employee Id</th>
            <th>Employee Name</th>
            <th>Date</th>
            <th>Status</th>
        </tr>
    </thead>

    <tbody id="tableBody">  
        <% 
            if(list != null && !list.isEmpty()) {
                for(BetweendateSearch eModel : list) {
                    String statusColor = ""; // Variable to hold the color based on status
                    
                   
                    
                    if (eModel.getStatus().equals("Present")) {
                        statusColor = "green"; // Set color to green if status is Present
                    } else if (eModel.getStatus().equals("Absent")) {
                        statusColor = "red"; // Set color to red if status is Absent
                    }
        %>

        <tr style="background-color: <%= backColor %>;color: <%= fontColor %>;">
        
             <td><%= eModel.getId()%></td>
              <td><%= eModel.getName() %></td>
            <td><%= eModel.getStartdate() %></td>
           <td style="background-color: <%= statusColor %>; color: <%= fontColor %>;"><%= eModel.getStatus() %></td>
                    <% Pdays=eModel.getPdays();%>
                        <% Adays=eModel.getAdays();%>
                        <% Total=eModel.getTotaldays();%>
                       
           </tr>
        <% 
            }
            %>
  
         <%   
          } 
          else  { 
        %>
        <tr>
            <td colspan="2" style="color: red;">Employee Table is Empty</td> <th></th> <th></th>
        </tr>
        <% 
            } 
        %>
    </tbody>
    
    
     <tr>
    
          <th style="background-color: <%= backColor %>;color: <%= fontColor %>;">Total Present Employees</th>
           <td style="background-color: <%= c %>; color: <%= fontColor %>;"><%=Pdays%></td>
           <th style="background-color: <%= backColor %>;color: <%= fontColor %>;">Total Absent Employees</th>
           <td style="background-color: <%= k %>; color: <%= fontColor %>;"><%=Adays%></td>
        </tr>
        
        <tr style="background-color: <%= backColor %>;color: <%= fontColor %>;"><th></th><th>Total All Days</th> <td><%=Total%></td><th></th></tr>
        
</table>
