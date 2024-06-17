<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.Admin.Services.*,java.util.*,org.Admin.Model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>
<script type="text/JavaScript">
var ff;
	function esearch() 
	{
		let xhttp = new XMLHttpRequest();

		var s = document.getElementById('searchemp').value;

		xhttp.onreadystatechange = function() 
		{
			if (this.readyState == 4 && this.status == 200) 
			{
				document.getElementById("DeptSearch").innerHTML = this.responseText;
				console.log(this.responseText);
			}
		};

		xhttp.open("GET", "PersonalSearchTrackAttedance.jsp?st="+s+"&f="+ff,true);
		xhttp.send();
	}
	
	
	function DateSearch() 
	{
		let xhttp = new XMLHttpRequest();

		var d = document.getElementById('Attedancedate').value;

		ff=d;
	
		 xhttp.onreadystatechange = function() 
		 {
			if (this.readyState==4&&this.status==200)
			{
				document.getElementById("DeptSearch").innerHTML=this.responseText;
				console.log(this.responseText);
			}
		}; 
		
		// xhttp.open("GET","DateSearch.jsp?dd="+d,true);
		// alert(f);
		  //  xhttp.send();
	}
	
	
	
	

// 	function toggleButton(button) 
// 	{
// 		if (button.classList.contains("btn-danger")) {
// 			button.classList.remove("btn-danger");
// 			button.classList.add("btn-success");
// 			button.textContent = "Present!";
// 		} else {
// 			button.classList.remove("btn-success");
// 			button.classList.add("btn-danger");
// 			button.textContent = "Absent";
// 		}
// 	}

	function SearchDepartment() 
	{
           
		let xhttp = new XMLHttpRequest();
		
		var st = document.getElementById('employeeDepartment').value;

		xhttp.onreadystatechange = function()
		{
			if (this.readyState == 4 && this.status == 200) 
			{
				document.getElementById("DeptSearch").innerHTML = this.responseText;
				
				console.log(this.responseText);
			}
		};

		xhttp.open("GET", "SearchTrackDept.jsp?s=" + st + "&f=" +ff, true);


		xhttp.send();
	}
</script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>

/* body { */
/*     width:80%; */
/*     margin: auto; */
/*     background-image: url('Images/AttedanseImage.jpg'); */
/*     background-size: cover; */
/*     background-repeat: no-repeat; */
/*     background-attachment: fixed; */
/* } */

/* @media (max-width: 768px) { */
/*     body { */
/*         width: 100%; /* Make the body full-width on smaller screens */ */
/*         margin-right: 0; /* Remove right margin on smaller screens */ */
/*     } */
/* } */


  /* CSS for responsiveness */
.search-form {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}

.search-input {
    flex: 1;
    max-width: 200px; /* Set a maximum width for the input */
    margin-right: 5px; /* Add some spacing between input and button */
}

.btn {
    flex: 0 0 auto; /* Allow the button to take its natural width */
}

@media (max-width: 576px) {
    .search-input {
        width: 100%; /* Make the input full-width on smaller screens */
        max-width: none; /* Remove the maximum width on smaller screens */
        margin-right: 0; /* Remove the margin for smaller screens */
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
            <h1 style="color:red;">Employee Details</h1>

            <br/><br/><br/><br/>
            <form class="d-flex search-form frm" role="search" id="searchForm">
                <input class="form-control me-2 search-input" type="search" placeholder="Enter name" aria-label="Search" id="searchemp" onkeyup="esearch()" style="max-width: 150px;">
                <button class="btn btn-outline-warning ml-2" type="button">Search</button>
            </form>
            <br/><br/>

            <div class="row">
                <div class="col-sm-6 form-group">
                    <label for="joining_date"> Date</label> 
                    <input type="date" class="form-control" name="dailydate" id="Attedancedate" onchange="DateSearch()" required>
                </div>                
   
                
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
        <label for="deptemployee">Department</label>
        <select name="department" class="form-control" id="employeeDepartment" onchange="SearchDepartment()">
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

            <br /> <br />
            <div id="DeptSearch">
                <table class="table table-bordered border-danger">
                    <thead>

                    </thead>
                    <tbody>
                        <!-- Table body content goes here -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

   </div>
</div>
	
	

</body>
</html>
