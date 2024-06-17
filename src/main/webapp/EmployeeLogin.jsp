<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="org.Employee.Model.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Responsive Login Form</title>

<link href="CSS/Employee.css" rel="stylesheet">

<style>
body {
    background-image: url('Images/EmployeeLogin.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.container {
    background-color: rgba(255, 255, 255, 0.9); /* White background with slight transparency */
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Enhanced box shadow */
    width: 800px;
    height:100%;
    max-width: 400px; /* Max width for the container */
    box-sizing: border-box;
    border: 1px solid #ccc; /* Border added */
    text-align: center;
}

input[type="text"],
input[type="password"],
input[type="submit"] {
    width: calc(100% - 24px); /* Adjust width to accommodate padding and border */
    padding: 12px;
    margin: 10px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type="submit"] {
    background-color: #272727;
    color: white;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s;
}

input[type="submit"]:hover {
    background-color: #111827;
}

@media only screen and (max-width: 600px) {
    body {
        background-image: url('Images/EmployeeLogin_mobile.jpg');
        background-size: cover;
        background-position: center;
    }

    .container {
        width: 90%;
        padding: 20px;
    }
}

@media only screen and (max-width: 400px) {
    input[type="text"],
    input[type="password"],
    input[type="submit"] {
        width: calc(100% - 14px); /* Adjust width to accommodate padding and border */
        padding: 10px;
    }

    .container {
        padding: 15px;
    }
}
</style>
</head>
<body>

<form action="E">
    <div class="container">
        <h2>User Login</h2>
        <label for="username">USER NAME</label>
        <br><br>
        <input type="text" name="user" placeholder="Enter userName" required>
        <br><br>
        
        <label for="password">PASSWORD</label>
        <br><br>
        <input type="password" name="pass" placeholder="Enter Password" required>
        <br><br>
        
        <input type="submit" value="Login">
        
        <a href="Admindashbord.jsp" class="back-button">   Home</a>
        
       
    </div>
</form>

</body>
</html>
