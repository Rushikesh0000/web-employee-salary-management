
<%@ page import="org.emplyee.service.*,java.util.*,org.Employee.Model.*,java.time.LocalDate,java.time.format.DateTimeFormatter"%>


      <% 
  String fontColor="white";
  String backColor="black";
  String c="green";
  String k="red";
 
   %>
   
<table class="table table-bordered border-danger">
      <thead style="background-color: <%= k%>; color: <%= fontColor %>;">
        
<!--          <tr> -->
      
<!--           <th>Id</th> -->
<!--           <th>Name</th> -->
<!--         </tr> -->
        
        <tr>
          <th>Date</th>
          <th>Status</th>
        </tr>
        
      </thead>

      <tbody id="tableBody">  
        <% 
          
        int Pdays=0,Adays=0,Total=0;
        
        int eid = Integer.parseInt(session.getAttribute("empid").toString());
        
        String dat=request.getParameter("dd");
        
        LocalDate date = LocalDate.parse(dat,DateTimeFormatter.ISO_DATE);
        
        int M= date.getMonthValue();
     
        AttedanceServices empservice=new AttedanceServicesImpl();
       
       List<AttedanceModell> list=empservice.ViewEmployee(eid,M);
       
       
       String statusColor="";
       
          if(list!=null && !list.isEmpty())
          {
            for(AttedanceModell eModel:list)
            {
            	
            	  if (eModel.getStatus().equals("present")) {
                      statusColor = "green"; // Set color to green if status is Present
                  } else if (eModel.getStatus().equals("Absent")) {
                      statusColor = "red"; // Set color to red if status is Absent
                  }
            	
        %>
              
          <tr style="background-color: <%= backColor%>; color: <%= fontColor %>;">
                  
                        <td style="background-color: <%=statusColor%>; color: <%= fontColor %>;"><%=eModel.getDate()%></td>
                        <td style="background-color: <%=statusColor%>; color: <%= fontColor %>;"><%=eModel.getStatus()%></td>
                       
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
    </table>