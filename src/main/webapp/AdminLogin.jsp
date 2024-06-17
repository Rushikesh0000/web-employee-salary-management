<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="css/loginStyle.css">
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f3f4f6;
}

.container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    width: 90%;
    max-width: 400px;
    margin: 20px auto;
}

input[type="text"],
input[type="password"],
input[type="submit"] {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 6px;
    box-sizing: border-box;
}

input[type="submit"] {
    background-color: #1f2937;
    color: white;
    cursor: pointer;
    transition: background-color 0.3s;
}

input[type="submit"]:hover {
    background-color: #111827;
}

.login-link {
    text-align: center;
    margin-top: 10px;
}

.login-link a {
    text-decoration: none;
    color: #4b5563;
}

.login-link a:hover {
    text-decoration: underline;
}

.alert {
    padding: 12px;
    background-color: #ef4444;
    color: white;
    border-radius: 6px;
    margin-top: 10px;
    display: none;
}

@media (max-width: 768px) {
    .container {
        padding: 10px;
    }

    input[type="text"],
    input[type="password"],
    input[type="submit"] {
        padding: 10px;
        margin: 8px 0;
    }
}
</style>
</head>
<body>

<div class="container">
    <h2>Admin Login</h2>
    <form action="AdminController" method="post" onsubmit="return validateForm()">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" placeholder="Enter your username" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>

        <input type="submit" value="Login">
    </form>
    <div class="login-link">
        Don't have an account? <a href="AdminAdd.jsp">Sign Up</a>
    </div>
    <div id="alert" class="alert">Wrong username or password!</div>
</div>

<script>
function validateForm() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    // Add your authentication logic here
    if (username !== "admin" || password !== "1414") {
        document.getElementById("alert").style.display = "block";
        return false; // Prevent form submission
    }
}
</script>

</body>
</html>
