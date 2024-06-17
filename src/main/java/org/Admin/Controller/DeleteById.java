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

@WebServlet("/Del")
public class DeleteById extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        int eid = Integer.parseInt(request.getParameter("eid"));

        DeleteServices del = new DeleteServicesImpl();

        int result = del.DeleteByid(eid);

        if (result > 0) {
            // Set a request attribute to indicate successful deletion
            request.setAttribute("deleteSuccess", true);
        } else {
            System.out.println("Some Prb");
        }

        RequestDispatcher r = request.getRequestDispatcher("ViewEmployee.jsp");
        r.include(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
