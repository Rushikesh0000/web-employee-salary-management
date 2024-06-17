package org.Employee.employee.controller;


import java.io.IOException;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.Employee.Model.EmploLogin;
import org.Employee.Model.EmployeeInfoModel;
import org.emplyee.service.EmployeeInfoServices;
import org.emplyee.service.EmployeeInfoServicesImpl;


@WebServlet("/E")
public class EmploLoginController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
         response.setContentType("text/html");
         
         PrintWriter out=response.getWriter();
         
         String user=request.getParameter("user").trim();
         String password=request.getParameter("pass").trim();
   
      
            EmployeeInfoServices eservice=new EmployeeInfoServicesImpl();
            
     int result=eservice.getIdsession(user, password);
    
     System.out.println(result+"result ");
     
        if(result!=-1)
        {	
     
        	HttpSession session=request.getSession(true);
        	
        	session.setAttribute("empid",result);
        	
        			
        	RequestDispatcher r=request.getRequestDispatcher("EmployeeDashboard.jsp");
        	
 		     r.include(request, response);
              
        }
        else
        {
        	RequestDispatcher r=request.getRequestDispatcher("EmployeeLogin.jsp"); 
        	r.forward(request, response);
        }
       
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doGet(request, response);
	}

}
