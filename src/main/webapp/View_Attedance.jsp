<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.Admin.Services.*,java.util.*,org.Admin.Model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>
<script type="text/JavaScript">
 
 var f;
 
  function empsearch()
  {
	  let xhttp=new XMLHttpRequest();
	  var s=document.getElementById("SearchEmp").value;

	  xhttp.onreadystatechange=function()
	  {
		 
		  if(this.readyState==4 && this.status==200)
			  {
			
			    document.getElementById("SearchAtt").innerHTML=this.responseText;
			     console.log(this.responseText);
			  }
		  
	  };
	  
	  xhttp.open("GET","View_AttedanceSearch.jsp?s="+s+"&d="+f,true);
	  xhttp.send();
  }
  
  

  function SearchByDepartment() {
		let xhttp = new XMLHttpRequest();
		var st = document.getElementById('deptemployee').value;
		
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				document.getElementById("SearchAtt").innerHTML = this.responseText;
				console.log(this.responseText);
			}
		};
		
		xhttp.open("GET", "View_AttedanceSearch.jsp?f=" +st+"&d="+f, true);
		xhttp.send();
	}

	
	function DateSearch() 
	{
		let xhttp = new XMLHttpRequest();

		var d = document.getElementById('Attedancedate').value;
	
		f=d;

		 xhttp.onreadystatechange = function() 
		 {
			if (this.readyState==4&&this.status==200)
			{
				document.getElementById("DeptSearch").innerHTML=this.responseText;
				console.log(this.responseText);
			}
		}; 
		
		// xhttp.open("GET","DateSearch.jsp?dd="+d,true);
		 //alert(f);
		  // xhttp.send();
	}
	
	
</script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>

/* CSS for responsiveness */
.search-form {
    display: flex;
    flex-wrap: wrap;
    justify-content: flex; /* Align the form to the right */
}

.search-input {
    flex: 1; /* Allow the input to grow and take up available space */
    max-width: 200px; /* Limit the maximum width of the input */
    margin-right: 5px; /* Add some spacing between input and button */
}

.btn {
    flex: 0 0 auto; /* Allow the button to take its natural width */
}

@media (max-width: 576px) {
    .search-form {
        justify-content: center; /* Center the form on smaller screens */
    }
    
    .search-input {
        width: 100%; /* Make the input full-width on smaller screens */
        max-width: none; /* Remove the maximum width on smaller screens */
        margin-right: 0; /* Remove the margin for smaller screens */
    }
    
    .form-group {
        width: 100%; /* Make form groups full-width on smaller screens */
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

      <br/><br/><br/>
      <div id="SearchAtt">
        <!-- Content goes here -->
      </div>
    </div>
  </div>  
</div>

 </div>  
</div>

</body>
</html>