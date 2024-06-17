package org.Admin.Controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.Admin.Model.AdminModel;
import org.Admin.Services.AdminServices;
import org.Admin.Services.AdminServicesImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



@WebServlet("/AdminController")
public class AdminController extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("username");
		String password=request.getParameter("password");
	
		
		AdminServices aservice=new AdminServicesImpl();
		
		List <AdminModel> list=aservice.getAllAdmin(name,password);
		
		 
       
		
		if(list!=null)
		{   AdminModel model=list.get(0);
		    String username=model.getUsername();
		    String pass=model.getPassword();
		HttpSession sessoion=request.getSession(true);
			sessoion.setAttribute("user",username);
			sessoion.setAttribute("password", pass);
			RequestDispatcher r=request.getRequestDispatcher("AdminDashBoard.jsp");
			r.include(request, response);
			
		}
		else
		{   
			

			RequestDispatcher r=request.getRequestDispatcher("AdminLogin.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doGet(request, response);
	}

}
