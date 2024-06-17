<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Centered Bootstrap Form with Existing Sidebar</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    
        @media (max-width: 408px) {
            .border-box {
               
                border: 1px solid #ddd;
                border-radius: 5px;
                margin: 0 10px;
            }
        }
        @media (min-width: 400px) {
            .border-box {
            
                border: 1px solid #ddd;
                border-radius: 5px;
            }
        }
    </style>
</head>
<body>
    <!-- Include AdminDashBoard.jsp content -->
    <div class="admin-dashboard" style="height:100vh;">
        <%@include file="AdminDashBoard.jsp"%>
    </div>
    
  <div class="container m-auto">
        <div class="row justify-content-center form-container m-5">
            <div class="col-12 col-md-8 col-lg-6 border-box">
                <form onsubmit="event.preventDefault(); adddata();">
                    <div class="form-group">
                        <label for="departmnt">Department</label>
                        <input type="text" class="form-control" id="departmnt" placeholder="Enter something" onkeyup="SearchDepartment()">
                    </div>
                    <div class="form-group text-center">
                        <button type="button" class="btn btn-primary mt-3" onclick="adddata()" id="dataad">Add</button>
                    </div>
                </form>
                
                <div id="Departmentsearch" class="mt-3">
                    <!-- Search results will appear here -->
                </div>
            </div>
        </div>
    </div>


    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <!-- JavaScript for AJAX requests -->
    <script type="text/javascript">
        function adddata() {
            let xhttp = new XMLHttpRequest();
            var k = document.getElementById("departmnt").value;
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("Departmentsearch").innerHTML = this.responseText;
                    console.log(this.responseText);
                }
            };
            xhttp.open("GET", "DepartmentController?s=" + k, true);
            xhttp.send();
        }
        
        function SearchDepartment() {
            let xhttp = new XMLHttpRequest();
            var s = document.getElementById("departmnt").value;
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("Departmentsearch").innerHTML = this.responseText;
                    console.log(this.responseText);
                }
            };
            xhttp.open("GET", "SearchDepartment.jsp?dep=" + s, true);
            xhttp.send();
        }
    </script>
</body>
</html>
