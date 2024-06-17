<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.Admin.Services.*,java.util.*,org.Admin.Model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>
<script type="text/javascript">

 var ss;
  function esearch() {
	  let xhttp = new XMLHttpRequest();
	  var s = document.getElementById("searchemp").value;
             

	  xhttp.onreadystatechange = function() {
		  if (this.readyState == 4 && this.status == 200) {
			    document.getElementById("Ajaxsearch").innerHTML = this.responseText;
			    console.log(this.responseText);
		  }
	  };
	  
	  xhttp.open("GET", "searchBYEmployeename.jsp?s="+s,true);
	  xhttp.send();
  }

  function SearchByDepartment() {
		let xhttp = new XMLHttpRequest();
		var st= document.getElementById('deptemployee').value;
	      ss=st;
	      
		xhttp.onreadystatechange = function() 
		{
			if (this.readyState == 4 && this.status == 200) {
				document.getElementById("Ajaxsearch").innerHTML = this.responseText;
				console.log(this.responseText);
			}
		};
		
		xhttp.open("GET", "SearchEmployee.jsp?f="+st, true);
		xhttp.send();
	}
	
</script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>

  
  /* CSS for responsiveness */
.search-form {
    flex-wrap: wrap;
   
}

.search-input {
 
    flex: 1;
    max-width: 150px; /* Decrease the maximum width of the input box */
    margin-right: 5px; /* Add space between input and button */
}

.btn {
    flex: 0 0 auto; /* Allow button to take its natural width */
}

@media (max-width: 576px) {
    .search-input {
        width: 100%; /* Make input full-width on smaller screens */
        max-width: none; /* Remove max-width for smaller screens */
        margin-right: 0; /* Remove margin for smaller screens */
    }
}
  
  
</style>
</head>
<body>

  <div class="admin-dashboard" style="height:100vh;">
        <%@include file="AdminDashBoard.jsp"%>
    </div>

<div class="container">
  <div class="row justify-content-center">
    <div class="col-md-8" style="text-align:center;">
      <br/><br/>
      <h1 style="color:red;">Employee Details</h1>
      <br/><br/> <br/><br/> <br/><br/>
      <form class="d-flex search-form frm" role="search" id="searchForm">
        <input class="form-control me-2 search-input" type="search" placeholder="Enter name" aria-label="Search" id="searchemp" onkeyup="esearch()" style="max-width: 150px;">
        <button class="btn btn-outline-warning ml-2" type="button">Search</button>
      </form>
      <br/><br/>

      <%
        DepartmentServices empservice = new DepartmentServicesImpl();
        List<Department2> list = empservice.DeptViewdata();
        HashMap<Integer,String> map=new HashMap();
        
        
        for(Department2 d:list)
        {
          map.put(d.getDeptid(), d.getDeptname());
        }
      %>
      <div class="col-sm-6 form-group">
        <label for="sex">Department</label>
        <select name="department" class="form-control" id="deptemployee" onchange="SearchByDepartment()">
          <option>Select Department</option>
          <% 
            Set<Map.Entry<Integer,String>> ss=map.entrySet();
            for(Map.Entry<Integer,String> m:ss) {
          %>
          <option value="<%=m.getKey()%>"><%=m.getValue() %></option>
          <% } %>
        </select>
      </div>
    </div>
  </div>  

  <br/><br/><br/>
  <div id="Ajaxsearch">
    <table class="table table-bordered border-danger">
      <thead>
        <!-- Add headers here if needed -->
      </thead>
    </table>
  </div>
</div>

  </div>  
</div>

</body>
</html>
