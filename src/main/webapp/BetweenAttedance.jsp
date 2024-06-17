<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.Admin.Services.*,java.util.*,org.Admin.Model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>
<script type="text/JavaScript">
var sd,ed;
	function esearch() 
	{
		let xhttp = new XMLHttpRequest();

		var s = document.getElementById('searchemp').value;

		xhttp.onreadystatechange = function() 
		{
			if (this.readyState == 4 && this.status == 200) 
			{
				document.getElementById("Betweendate").innerHTML = this.responseText;
				console.log(this.responseText);
			}
		};

		xhttp.open("GET", "Betweendate_Attendance.jsp?st="+s+"&sd="+sd+"&ed="+ed,true);
		xhttp.send();
	}
	
	
	function startDate() 
	{
		let xhttp = new XMLHttpRequest();

		var d = document.getElementById('startdate').value;
	
		sd=d;
		
		 xhttp.onreadystatechange = function() 
		 {
			if (this.readyState==4&&this.status==200)
			{
				document.getElementById("Betweendate").innerHTML=this.responseText;
				console.log(this.responseText);
			}
		}; 
		
		// xhttp.open("GET","DateSearch.jsp?dd="+d,true);
		// alert(f);
		  //  xhttp.send();
	}
	
	

	  function SearchByDepartment()
	  {
			let xhttp = new XMLHttpRequest();
			var dep = document.getElementById('deptemployee').value;
			
			xhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					document.getElementById("Betweendate").innerHTML = this.responseText;
					console.log(this.responseText);
				}
			};
			
			xhttp.open("GET", "Betweendate_Attendance.jsp?dep="+ dep+"&sd="+sd+"&ed="+ed,true);
			xhttp.send();
		}

	
	function Enddate()
	{

		let xhttp = new XMLHttpRequest();
		
		var st = document.getElementById('enddate').value;

		ed=st;
		
		xhttp.onreadystatechange = function()
		{
			if (this.readyState == 4 && this.status == 200) 
			{
				document.getElementById("Betweendate").innerHTML = this.responseText;
				
				console.log(this.responseText);
			}
		};
/* 
		xhttp.open("GET", "SearchTrackDept.jsp?s=" + st + "&f=" + f, true);


		xhttp.send(); */
	}
</script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	width: 90%;
	margin: auto;
	background-image: url('Images/Employee1.jsp');
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	margin-right: 500px;
}

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

	 <div class="admin-dashboard style="height:auto;">
        <%@include file="AdminDashBoard.jsp"%>
    </div>


	
	
	
	<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8" style="text-align:center;">
            <h1 style="color:red;">Employee Details</h1>

            <br/><br/><br/><br/>

            <div class="row">
                <div class="col-sm-6 form-group">
                  <label for="joining_date"> Start Date</label> 
                   <input type="date" class="form-control" name="dailydate" id="startdate" onchange="startDate()" required>
                </div>
                
                 <div class="col-sm-6 form-group">
				<label for="joining_date"> End Date</label> 
				<input type="date" class="form-control" name="dailydate" id="enddate" onchange="Enddate()" required>
			</div>

                <div class="col-sm-6 form-group">
                  <label for="deptemployee">Department</label> 
                    <select name="department" class="form-control" id="deptemployee" onchange="SearchByDepartment()">
               		 <option>Select Department</option>
	                   <option >Paintshop</option>
	                   <option >Assembly</option>
	                  <option >Maintenance</option>
	                 </select>
                </div>
            </div>

            <br /> <br />
           <div id="Betweendate">
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
