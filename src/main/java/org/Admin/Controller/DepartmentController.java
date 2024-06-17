package org.Admin.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import org.Admin.Services.DepartmentServices;
import org.Admin.Services.DepartmentServicesImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/DepartmentController")
public class DepartmentController extends HttpServlet 
{

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
         String department = request.getParameter("s");
        
       
     
         DepartmentServices drp=new DepartmentServicesImpl();
         
         boolean result=drp.addDepartment(department);
         
       
       if(result)
       {
    	   out.println("Added Successfuly..........");
    	   
//    	   RequestDispatcher r=request.getRequestDispatcher("ViewDepartment.jsp");
//    	   r.include(request, response);
     
          
       }
       else
       {
           System.out.println("Track Department Controller Some Problem Here");
       }
         
//        AdminModel a=new AdminModel();
//
//        TrackAttendanceService trk = new TrackAttendanceServiceImpl();
//        
//   
//        
//        boolean result=trk.TrackAttedance(id,attendanceDate,status);
//        
//        if(result)
//        {
//            RequestDispatcher r=request.getRequestDispatcher("TrackAttedance.jsp");
//            r.include(request, response);
//        }
//        else
//        {
//            System.out.println("Track Attedance Controller Some Problem Here");
//        }
               
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
