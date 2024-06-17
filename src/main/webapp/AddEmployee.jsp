<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="org.Admin.Model.*,org.Admin.Services.*,java.util.*"%>



<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration Form</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link href="CSS/Adminstyle.css" rel='stylesheet'/>

   <style>
   body
    {
     background-color: #A4A4A4;
   }
 
   .center-div 
   {
     margin: 0 auto;
     max-width: 500px;
   }
   </style>
   
</head>
<body>


 <div class="admin-dashboard" style="height:100vh;">
        <%@include file="AdminDashBoard.jsp"%>
    </div>
    
    
<div class="container ">
  <form action="AddNewEmployee" method="post" onsubmit="return validateForm()">
    <div class="row jumbotron box8">
      <div class="col-sm-12 mx-t3 mb-4">
        <h2 class="text-center text-info">Register</h2>
      </div>
      <div class="col-sm-6 form-group">
        <label for="name-f"> Name</label>
        <input type="text" class="form-control" name="name" id="name" placeholder="Enter your first name." onkeyup="nameValidate()" required>
         <span id="nameeroor" class="text-danger"></span>
      </div>

      <div class="col-sm-6 form-group">
        <label for="email">Email</label>
        <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email." required onkeyup="checkEmail()">
        <span id="emailError" class="text-danger"></span>
      </div>
      
      <div class="col-sm-6 form-group">
        <label for="address-1">Address </label>
        <input type="text" class="form-control" name="address" id="address-1" placeholder="Locality/House/Street no." required>
      </div>
     
      <div class="col-sm-6 form-group">
        <label for="joining_date">Joining Date</label>
        <input type="date" class="form-control" name="joining_date" id="joining_date" required>
      </div>
  <%
  
  DepartmentServices empservice = new DepartmentServicesImpl();
        		
  List<Department2> list = empservice.DeptViewdata();
        		HashMap<Integer,String> map=new HashMap();
        		for(Department2 d:list){
        			map.put(d.getDeptid(), d.getDeptname());
        		}
  %>
      <div class="col-sm-6 form-group">
        <label for="sex">Department</label>
     
          <select name="department" class="form-control" id="employeePosition">
          <option>Select Department</option>
          <%
          Set<Map.Entry<Integer,String>> ss=map.entrySet();
  	    
  	    for(Map.Entry<Integer,String> m:ss)
  	    {
  	    	%>
  	    	
  	         <option value="<%=m.getKey()%>"><%=m.getValue() %></option>
  	    	<%	
  	    }
          %>

          </select>
      </div>
      
        <div class="col-sm-6 form-group">
        <label for="sex">Position</label>
        
        <select name="position" class="form-control" id="employeePosition" "> 
        
              <option>Select Position</option>
          <%
          
          AddEmployeeModel am=new AddEmployeeModel();
          
          DepartmentServices empservic = new DepartmentServicesImpl();
          List<EmploPosition> list1 = empservic.getPosition();
        	
        		HashMap<Integer,String> map1=new HashMap();
        		for(EmploPosition d:list1){
        			map1.put(d.getPid(), d.getDname());
        		}
        		
          Set<Map.Entry<Integer,String>> k=map1.entrySet();
  	    
  	    for(Map.Entry<Integer,String> m:k)
  	    {
  	    	%>
  	         <option value="<%=m.getKey()%>"><%=m.getValue()%> </option>
  	    	<%	
  	    	
  	    }
          %>
        
           </select>
        

      </div>
      
     
            
       <div class="col-sm-6 form-group">
        <label for="pass2">UserName</label>
           <input type="text" name="username"  class="form-control" id="employeeUserName" placeholder="Enter Employee Username" onkeyup="validateusername(this.value)">
      </div>
      
      
      <div class="col-sm-6 form-group">
        <label for="pass2"> Password</label>
            <input type="password" name="password" class="form-control" id="employeePassword" placeholder="Enter Employee Password" onkeyup="validatePassword(this.value)" required>

      </div>
      
       
      <div class="col-sm-2 form-group">
        <label for="cod">Country code</label>
        <select class="form-control browser-default custom-select">
          <option data-countryCode="US" value="1" selected>USA (+1)</option>
          <option data-countryCode="GB" value="44">UK (+44)</option>

          <option disabled="disabled">Other Countries</option>

          <option data-countryCode="HK" value="852">Hong Kong (+852)</option>
          <option data-countryCode="HU" value="36">Hungary (+36)</option>
          <option data-countryCode="IS" value="354">Iceland (+354)</option>
          <option data-countryCode="IN" value="91">India (+91)</option>
          <option data-countryCode="ID" value="62">Indonesia (+62)</option>
          
        </select>
      </div>
      <div class="col-sm-4 form-group">
        <label for="tel">Phone</label>
        <input type="text" class="form-control" name="contact" id="contact"  placeholder="Enter Contact"  required onkeyup="validatePhone()">
        <span id="phoneError" class="text-danger"></span>
      </div>
      
       <div class="col-sm-4 form-group" >
          <label for="employeeGender"> Gender</label>
          <select  class="form-control" id="gender" name="gender">
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Unspecified">Unspecified</option>
          </select>
      </div>
      <div class="col-sm-12">
        <input type="checkbox" class="form-check d-inline" id="chb" required><label for="chb" class="form-check-label">&nbsp;I accept all terms and conditions.
        </label>
      </div>

      <div class="col-sm-12 form-group mb-0">
        <button class="btn btn-primary float-right" onclick="SHOW()">Submit</button>
       
      </div>
      
    </div>
  </form>

</div>
</div>
</div>

<script>

function nameValidate()
{
	var name = document.getElementById("name").value;
	 var nameeroor = document.getElementById("nameeroor"); 
    let pattern=/^[a-zA-Z 32]+$/g;
    
 
    if(!name.match(pattern))
    {
    	nameeroor.innerHTML = "Please enter a valid Name";

    }
    else{
    	nameeroor.innerHTML = "";
    }
 }



function checkEmail() {
  var email = document.getElementById("email").value;
  var emailError = document.getElementById("emailError");
  var emailPattern = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$/;
  var gmailPattern = /@gmail\.com$/;
  
  if (!email.match(emailPattern)) {
    emailError.innerHTML = "Please enter a valid email address";
  } else if (!email.match(gmailPattern)) {
    emailError.innerHTML = "Please enter a Gmail address";
  } else {
    emailError.innerHTML = "";
  }
}

function validateForm()
{
  alert("Added Succefully");
}


function validatePhone() {
  var phone = document.getElementById("contact").value;
  var phoneError = document.getElementById("phoneError");
  var phonePattern = /^[0-9]{10}$/;
  
  if (!phone.match(phonePattern)) {
    phoneError.innerHTML = "Please enter a valid 10-digit phone number";
  } else {
    phoneError.innerHTML = "";
  }
}


function SHOW()
{
   var a=document.getElementById("suc");
   headingObj.style.backgroundColor="red";
   headingObj.style.color="white";
   headingObj.style.padding="20px";
   headingObj.style.width="500px";
   headingObj.style.height="40px";
   headingObj.style.marginLeft="100px";
   headingObj.style.borderRadius="15px";

}


function validateusername(str3)
{
var pattern=/^[a-zA-Z0-9]+$/g;
var result=str3.match(pattern);
var e2=document.getElementById("s3");
if(result!=null)
{
e2.innerHTML="";
e2.style.color="white";
e2.style.backgroundColor="white";
}
else
{
e2.innerHTML="invalid";
e2.style.color="white";
e2.style.backgroundColor="red";
}
}


</script>

</body>
</html>
