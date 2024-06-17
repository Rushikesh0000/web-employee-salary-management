package org.Admin.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import org.Admin.Services.DeleteServices;
import org.Admin.Services.DeleteServicesImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Dell")
public class DeptDelete extends HttpServlet
{

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		   response.setContentType("text/html");

	        PrintWriter out = response.getWriter();

	        int did = Integer.parseInt(request.getParameter("did"));

	        DeleteServices del = new DeleteServicesImpl();

	        int result = del.DeleteBydeptId(did);

	        if (result > 0) {
	            // Set a request attribute to indicate successful deletion
	            request.setAttribute("deleteSuccess", true);
	        } else {
	            System.out.println("Some Prb");
	        }

	        RequestDispatcher r = request.getRequestDispatcher("ViewDepartment.jsp");
	        r.include(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		doGet(request, response);
	}

}
