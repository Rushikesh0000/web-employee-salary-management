
<%@ page import="org.Admin.Services.*,java.util.*,org.Admin.Model.*"%>

<table class="table table-bordered border-danger">
      <thead>
        <tr>
          <th>Department Id</th>
          <th>Department Name</th>
        </tr>
        
      </thead>

      <tbody id="tableBody">  
        <% 
       
        String departm=request.getParameter("dep");
        String deptm=request.getParameter("s");
        
        DepartmentServices empservice=new DepartmentServicesImpl();
       
       List<DepartmentModel> list=empservice.searchDepartment(departm);
       
          if(list!=null && !list.isEmpty())
          {
            for(DepartmentModel eModel:list)
            {
            	  	
     %>
          <tr>
                  <td><%=eModel.getDeptid()%></td>
                 <td><%=eModel.getName()%></td>
                       
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