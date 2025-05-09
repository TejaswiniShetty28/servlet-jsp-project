package de.zeroco.servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
//import jakarta.servlet.RequestDispatcher;
//import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UserInfo")
public class UserInfo extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        request.setAttribute("userName", name);
        request.setAttribute("userEmail", email);
        RequestDispatcher dispatcher = request.getRequestDispatcher("displayInfo.jsp");
        dispatcher.forward(request, response);
        response.sendRedirect("displayInfo.jsp");
    }
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String name = request.getParameter("name");
        String email = request.getParameter("email");
        request.setAttribute("userName", name);
        request.setAttribute("userEmail", email);
        request.getRequestDispatcher("displayInfo.jsp").forward(request, response);
        response.sendRedirect("displayInfo.jsp");
   }
}