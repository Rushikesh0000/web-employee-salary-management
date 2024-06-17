<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%--     pageEncoding="UTF-8"%> --%>
<!--     EmployeeSideAttedance.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.Admin.Services.*,java.util.*,org.Admin.Model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>
<script type="text/JavaScript">
    function DateAttedace() {
        let xhttp = new XMLHttpRequest();
        var d = document.getElementById('Attdate').value;
 
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("Attedance").innerHTML = this.responseText;
                console.log(this.responseText);
            }
        };
        xhttp.open("GET", "EmployeeAttedance.jsp?dd=" + d, true);
        xhttp.send();
    }
</script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
         
        <input type="date" class="form-control" name="dailydate" id="Attdate" placeholder="Select Date" required>

        </div>
        <input type="submit" class="btn btn-primary" value="OK" onclick="DateAttedace()"/>
        <br/><br/><br/>
        <div id="Attedance"></div>
    </div>
</div>
</body>
</html>
