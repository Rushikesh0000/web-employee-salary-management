<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<style>
    body {
        width: 100%;
        margin: auto;
        background-size: cover; 
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        flex-direction: column;
    }
    .form-group {
        display: flex;
        justify-content: center;
    }
    #Attedance {
        width: 100%;
        display: flex;
        justify-content: center;
    }
    .col-md-8 {
        text-align: center;
    }
 
</style>
</head>
<body>

   <%@include file="EmployeeSidebar.jsp"%>
 


<div class="container">
    <div class="col-md-8">
        <div class="col-sm-6 form-group">
         
     <form action="EmployeeCheckSalary.jsp" method="post">
    <label for="dailydate">Select Date:</label>
    <input type="date" class="form-control" name="d" id="dailydate" required>
    <br/><br/>
    <button type="submit" class="btn btn-success">CHECK</button>
     </form>
     
        </div>
        <br/>
        <div id="Salry"></div>
    </div>
</div>
   </div>
</div>

</body>
</html>