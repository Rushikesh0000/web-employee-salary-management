<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.Admin.Services.*,java.util.*,org.Admin.Model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>
<script type="text/JavaScript">
var sd, ed;
	function esearch() 
	{
		let xhttp = new XMLHttpRequest();

		var s = document.getElementById('searchemp').value;

		xhttp.onreadystatechange = function() 
		{
			if (this.readyState == 4 && this.status == 200) 
			{
				document.getElementById("Salary").innerHTML = this.responseText;
				console.log(this.responseText);
			}
		};

		xhttp.open("GET", "Track_Salary.jsp?st="+s,true);
		xhttp.send();
	}
	
	
	function SalDate() 
	{
		let xhttp = new XMLHttpRequest();

		var d = document.getElementById('Salstartdate').value;
		 
	      sd=d;
		
		 xhttp.onreadystatechange = function() 
		 {
			if (this.readyState==4&&this.status==200)
			{
				document.getElementById("Salary").innerHTML=this.responseText;
				console.log(this.responseText);
			}
		}; 
		
		
// 		 xhttp.open("GET","Track_Salary.jsp?d="+sd,true);
		
// 		   xhttp.send();
	}
	
	
	  function SearchByDepartment() {
			let xhttp = new XMLHttpRequest();
			var dep= document.getElementById('deptemployee').value;
			
			xhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					document.getElementById("Salary").innerHTML = this.responseText;
					console.log(this.responseText);
				}
			};
			
			xhttp.open("GET", "Track_Salary.jsp?dept="+dep+"&sd="+sd,true);
			xhttp.send();
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


</script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>

.search-input {
	width: 200px;
	margin-right: 10px;
}
</style>
</head>
<body>

	  <div class="admin-dashboard" style="height:100vh;">
        <%@include file="AdminDashBoard.jsp"%>
    </div>


	<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <br /> <br />
            <h1 style="text-align: center; color: red;">Employee Details</h1>

            <br/><br/>
            <form class="d-flex search-form frm" role="search" id="searchForm">
                <input class="form-control me-2 search-input" type="search" placeholder="Enter name" aria-label="Search" id="searchemp" onkeyup="esearch()" style="max-width: 150px;">
                <button class="btn btn-outline-warning ml-2" type="button">Search</button>
            </form>
            <br/><br/>

            <div class="row">
                <div class="col-sm-6 form-group">
                    <label for="joining_date">  Date</label> 
                    <input type="date" class="form-control" name="dailydate" id="Salstartdate" onchange="SalDate()" required>
                </div>

                <div class="col-sm-6 form-group">
                    <label for="deptemployee">Department</label> 
                    <select name="department" class="form-control" id="deptemployee" onchange="SearchByDepartment()">
                        <option>Select Department</option>
                        <option>Paintshop</option>
                        <option>Assembly</option>
                        <option>Maintenance</option>
                    </select>
                </div>
            </div>
            
            <br /> <br />
            <div id="Salary">
                <table class="table table-bordered border-danger">
                    <thead>

                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>

  </div>
</div>

</body>
</html>
