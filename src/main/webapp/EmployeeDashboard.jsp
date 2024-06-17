<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<style>
    #menu
       {
         padding-bottom:50px;
       }
</style>
</head>
<body>


<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                <a href="/" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                    <span class="fs-5 d-none d-sm-inline">Menu
               
                    </span>
                </a>
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
           
                      <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle text-info">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline ">Employee Master</span></a>
                        <ul class="collapse nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                        
                        
                            
                            <li class="w-100">
                                <a href="PersonalInfo.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline">Profile</span> </a>
                            </li>
                            
                        </ul>
                  
                
                     
            
                     <li>
                        <a href="Admindashbord.jsp" class="nav-link px-0 align-middle text-info">
                            <i class="fs-4 bi-people"></i> <span class="ms-1 d-none d-sm-inline">Home</span> </a>
                    </li>
                    
                    
                    
                    <li>
                        <a href="EmployeeLogin.jsp" class="nav-link px-0 align-middle text-info">
                            <i class="fs-4 bi-people"></i> <span class="ms-1 d-none d-sm-inline">Logout</span> </a>
                    </li>
                  
            
                   
                </ul>
                <hr>
                <div class="dropdown pb-4">
                    <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="https://github.com/mdo.png" alt="hugenerd" width="30" height="30" class="rounded-circle">
                        <span class="d-none d-sm-inline mx-1">loser</span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
                        <li><a class="dropdown-item" href="#">New project...</a></li>
                        <li><a class="dropdown-item" href="#">Settings</a></li>
                        <li><a class="dropdown-item" href="#">Profile</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Sign out</a></li>
                    </ul>
              
                  
                </div>
            </div>
        </div>
</body>
</html>