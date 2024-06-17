package org.Admin.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import org.Admin.Model.AddEmployeeModel;
import org.Admin.Services.AdminServices;
import org.Admin.Services.AdminServicesImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
 



@WebServlet("/AddNewEmployee")
public class AddNewEmployee extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String department = request.getParameter("department");
        String position = request.getParameter("position");
        String joining_date = request.getParameter("joining_date");
        
        

        AddEmployeeModel adde = new AddEmployeeModel();
        adde.setEname(name);
        adde.setEcontact(contact);
        adde.setEemail(email);
        adde.setEgender(gender);
        adde.setEaddress(address);
        adde.setUsername(username);
        adde.setPassword(password);
        adde.setDepartment(department);
        adde.setPosition(position);
        // Convert the joining_date to SQL date
        adde.setJoining_date(java.sql.Date.valueOf(joining_date));

        AdminServices eService = new AdminServicesImpl();
        boolean v = eService.isAddNewEmployee(adde);

        if (v) {
            RequestDispatcher r = request.getRequestDispatcher("AddEmployee.jsp");
            r.include(request, response);
        } else {
        	System.out.println("Some Problem Here");
        	
	
			
           // RequestDispatcher r = request.getRequestDispatcher("AddEmployee.jsp");
           // r.include(request, response);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }

}
