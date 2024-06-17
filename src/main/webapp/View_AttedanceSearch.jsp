
<%@ page import="org.Admin.Services.*,java.util.*,org.Admin.Model.*"%>

  <% 
  String fontColor="white";
  String backColor="black";
  String c="green";
  String k="red";
 
   %>
<table class="table table-bordered border-danger">
      <thead  style="background-color: <%= k%>; color: <%= fontColor %>;">
        <tr>
         <th>Employee Id</th>
          <th>Employee Name</th>
          <th>Date</th>
          <th>Status</th>
        </tr>
        
      </thead>

      <tbody id="tableBody" >  
        <% 
          
        int Pdays=0,Adays=0,Total=0;
        
        String search=request.getParameter("s");
        String department=request.getParameter("f");
        String dat=request.getParameter("d");
     
        TrackAttendanceService empservice=new TrackAttendanceServiceImpl();
       
       List<SearchAttedanceModel> list=empservice.searchEmployees(search,department,dat);
       
          if(list!=null && !list.isEmpty())
          {
            for(SearchAttedanceModel eModel:list)
            {
        %>
          <tr  style="background-color: <%= backColor%>; color: <%= fontColor %>;">
                        <td><%=eModel.getId()%></td>
                         <td><%=eModel.getName()%></td>
                        <td><%=eModel.getDate()%></td>
                        <td><%=eModel.getStatus()%></td>
                        
                        <% Pdays=eModel.getTotalPresent();%>
                        <% Adays=eModel.getTotalAbsent();%>
                        <% Total=eModel.getTotalday();%>
                       
           </tr>
           
        <% 
            }
            %>
            
           
         <%   
          } 
          else { 
        %>
          <tr>
            <td colspan="12" style="color: red;">Employee Table is Empty</td>
          </tr>
        <% 
          } 
        %>
      </tbody>
      <tr></tr>
        <tr style="background-color: <%= backColor%>; color: <%= fontColor %>;">
          <th>Total Present Employee</th>
           <td style="background-color: <%= c%>; color: <%= fontColor %>;"><%=Pdays%></td>
           <th>Total Absent Employee</th>
           <td style="background-color: <%= k%>; color: <%= fontColor %>;"><%=Adays%></td>
        </tr>
        
        <tr><th></th><th>Total All Employee</th> <td><%=Total%></td><th></th></tr>
    </table>