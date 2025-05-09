package de.zeroco.servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WecomePage
 */
@WebServlet("/WelcomePage")
public class WelcomePage extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("name");
        request.setAttribute("name", userName);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Response.jsp");
        dispatcher.forward(request, response);
    }
}
