package org.Admin.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import org.Admin.Model.AdminModel;
import org.Admin.Services.TrackAttendanceService;
import org.Admin.Services.TrackAttendanceServiceImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




@WebServlet("/Att")
public class AttendanceController extends HttpServlet 
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
         String attendanceDate = request.getParameter("f");
         
         
        
         
         String eid=request.getParameter("eid");
  
   
         
        String statu=request.getParameter("k");
       
        
         int id=Integer.parseInt(eid);
         
         int status=Integer.parseInt(statu);
         
     
        AdminModel a=new AdminModel();

        TrackAttendanceService trk = new TrackAttendanceServiceImpl();
         
        boolean result=trk.TrackAttedance(id,attendanceDate,status);
        
        if(result)
        {
            RequestDispatcher r=request.getRequestDispatcher("TrackAttedance.jsp");
            r.include(request, response);
        }
        else
        {
        	   RequestDispatcher r=request.getRequestDispatcher("TrackAttedance.jsp");
               r.include(request, response);
        }
               
    	}
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        doGet(request, response);
    }
}



