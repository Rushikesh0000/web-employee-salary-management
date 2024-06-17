
<%@ page import="org.Admin.Services.*,java.util.*,org.Admin.Model.*"%>

<table class="table table-bordered border-danger">
      <thead>
        <tr>
          <th>Id</th>
          <th>Name</th>
          <th>Contact</th>
          <th>Department</th>
          <th>Position</th>
          <th>Status</th>
          <th>Status</th>
       
        </tr>
      </thead>

      <tbody id="tableBody">  
        <%        

        String s=request.getParameter("st");
   
        String ff=request.getParameter("f");
        
   
       TrackAttendanceService empservic=new TrackAttendanceServiceImpl();

    
       List<AttendanceTrackModel> list=empservic.getEmploinfo(s);
       
          if(list!=null &&!list.isEmpty()) 
          {
            for(AttendanceTrackModel eModel:list)
            {
        %>
          <tr>
            <td><%=eModel.getEid()%></td>
            <td><%=eModel.getName()%></td>
            <td><%=eModel.getContact()%></td>
            <td><%=eModel.getDepartment()%></td>
            <td><%=eModel.getPosition()%></td>
                
             
               <td><a href='Att?eid=<%= eModel.getEid()%>&f=<%=ff%>&k=<%=1%>'>
               
                <button type="button" class="btn btn-success" >Present</button>
               </a></td>
               
                <td><a href='Att?eid=<%= eModel.getEid()%>&f=<%=ff%>&k=<%=0%>'>
               
                <button type="button" class="btn btn-danger" >Absent</button>
               </a> 
              
            </td> 
            </tr>
        <% 
            }
          } else { 
        %>
          <tr>
            <td colspan="12" style="color: red;">Employee Table is Empty</td>
          </tr>
        <% 
          } 
        %>
        
           
      </tbody>
    </table>