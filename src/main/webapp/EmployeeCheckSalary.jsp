<%@ page import="org.emplyee.service.*,java.util.*,org.Employee.Model.*,java.time.LocalDate,java.time.format.DateTimeFormatter"%>

<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
    <title>Responsive Employee Table</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
         
            background-color:lightblue;/* Update with the actual path to your image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .container-fluid {
            padding-left: 0;
            padding-right: 0;
        }
        .table-responsive {
            margin-left: 0;
            margin-right: 0;
        }
        .table {
            margin-bottom: 0; /* Remove space below table */
        }
        /* Optional: Add a semi-transparent background to the table to make text readable */
        .table-wrapper {
            background: rgba(255, 255, 255, 0.8); /* White background with opacity */
            padding: 20px;
            border-radius: 8px;
        }
    </style>
<!-- </head> -->
<!-- <body> -->
    
         <table class="table table-bordered table-hover">
             
                <tbody id="tableBody">
                    <%
                    
                        int eid = Integer.parseInt(session.getAttribute("empid").toString());
                        String month = request.getParameter("d");
        
                        
                        LocalDate date = LocalDate.parse(month,DateTimeFormatter.ISO_DATE);
                        
                       int M= date.getMonthValue();
                       
                System.out.println(M);
                       String Month="";
                       
                       if(M==1)
                       {
                    	    Month="January";
                       }
                       else if(M==2)
                       {
                    	   Month="February";
                       }
                       else if(M==3)
                       {
                    	   Month="March"; 
                       }
                       else if(M==4)
                       {
                    	   Month="April";
                       }
                       else if(M==5)
                       {
                    	   Month="May";
                       }
                       else if(M==6)
                       {
                    	   Month="June";
                       }
                       else if(M==7)
                       {
                    	   Month="July";
                       }
                       else if(M==8)
                       {
                    	   Month="August";
                       }
                       else if(M==9)
                       {
                    	   Month="September";
                       }
                       else if(M==10)
                       {
                    	   Month="October";
                       }
                       else if(M==11)
                       {
                    	   Month="November";
                       }
                       else if(M==12)
                       {
                    	   Month="December";
                       }
                        
                      
                       
                        String name,position,packages;
                        int totalpdays,totalAbsentdays;
                        
                        float totalsal,perdaysal, basic_sal;
                        
                        SalaryServiceImpl empservices = new SalaryServiceImpl();
                        
                        List<EmployeeCheckSalaryModel> list = empservices.CheckSalary(eid,M);

                        if (list != null && !list.isEmpty()) 
                        {
                            for (EmployeeCheckSalaryModel sTrack : list)
                            {
                   
                  
                       eid=sTrack.getId();
                       name=sTrack.getName();
                       position=sTrack.getPosition(); 
                       packages=sTrack.getPackages(); 
                       perdaysal=sTrack.getPerdaysal();
                       totalsal=sTrack.getTotalPdays()*perdaysal+1500;
                       basic_sal=sTrack.getBasicSal();
                       totalpdays=sTrack.getTotalPdays();
                       totalAbsentdays=sTrack.getTotalAdays();
                     
                      
                       
                   %> 

      <div class="container mt-5 mb-5">
    <div class="row">
      <div class="col-md-12">
        <div class="text-center lh-1 mb-2">
          <h6 class="fw-bold fs-4">Payslip</h6>
           <span class="ms-3 fs-6 fw-bold text bg-warning">Payment slip for the month of <%=Month%> 2021</span>
        </div>
        <div class="d-flex justify-content-end">
          <span class="fw-bold fs-6">Working Branch: Pune</span>
        </div>
        <div class="row">
          <div class="col-md-10">
            <div class="row">
              <div class="col-md-6">
                <div>
                  <span class="fw-bold fs-5">EMP ID :</span>
                  <span class="ms-3 fs-6 fw-bold text-danger"><%= eid %></span>
                </div>
              </div>
            </div>
            <div class="row mt-2">
              <div class="col-md-6">
                <div>
                  <span class="fw-bold fs-5">PF No. :</span>
                  <span class="ms-3 fs-6 fw-bold text-danger">101523065714</span>
             
                </div>
              </div>
              <div class="col-md-6">
                <div>
                  <span class="fw-bold fs-5"></span>
                  <small class="ms-3 fs-6"></small>
                </div>
              </div>
            </div>
            <div class="row mt-2">
              
              <div class="col-md-12">
                <div>
                  <span class="fw-bold fs-5">Mode of Pay :</span>
                  <span class="ms-3 fs-6 fw-bold text-danger">SBI</span>
                </div>
              </div>
            </div>
            <div class="row mt-2">
              <div class="col-md-6">
                <div>
                  <span class="fw-bold fs-5">Designation: </span>
                  <span class="ms-3 fs-6 fw-bold text-danger"><%=position %></span>
                </div>
              </div>
              <div class="col-md-6">
                <div>
                  <span class="fw-bold fs-5">Ac No.</span>
                  <span class="ms-3 fs-6 fw-bold text-danger">*******0701</span>
                 
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<!--   </div> -->

  <div class="container mt-5">
    <div class="card">
      <div class="card-header text-center">
        <h3>Payment Slip</h3>
      </div>
      <div class="card-body">
        <div class="row">
          <div class="col-sm-3"><strong>Employee Name </strong></div>
          <div class="col-sm-9"><%=name%></div>
        </div>
        <div class="row mt-2">
          <div class="col-sm-3"><strong>Basic Salary</strong></div>
          <div class="col-sm-9"> <%=basic_sal%></div>
        </div>
        <div class="row mt-2">
          <div class="col-sm-3"><strong> Present Days </strong></div>
          <div class="col-sm-9"><%=totalpdays%></div>
        </div>
        <div class="row mt-2">
          <div class="col-sm-3"><strong> Absent Days </strong></div>
          <div class="col-sm-9"><%=totalAbsentdays %></div>
        </div>
        <div class="row mt-2">
          <div class="col-sm-3"><strong>HRA</strong></div>
          <div class="col-sm-9">1500</div>
        </div>
        <div class="row mt-2">
          <div class="col-sm-3"><strong>PF</strong></div>
          <div class="col-sm-9">00</div>
        </div>
        <div class="row mt-2">
          <div class="col-sm-3"><strong>EWF</strong></div>
          <div class="col-sm-9">00</div>
        </div>
        <div class="row mt-2">
          <div class="col-sm-3"><strong>Per Day Salary</strong></div>
          <div class="col-sm-9"><%=perdaysal %></div>
        </div>
        
        <div class="row mt-2">
          <div class="col-sm-3"><strong>Total Salary</strong></div>
          <div class="col-sm-9"><%=totalsal%></div>
        </div>
        
        <div class="row mt-4">
          <div class="col-sm-12 text-center">
            <button type="button" class="btn btn-primary">Print Slip</button>
          </div>
        </div>
      </div>
    </div>
  </div>

  

                               
                               
                          
                   
                   
                    <%
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="5" class="text-center text-danger">Employee Table is Empty</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script>
    document.querySelector('button').addEventListener('click', function()
    {
      window.print();
    });
  </script>
<!-- </body> -->
<!-- </html> -->
