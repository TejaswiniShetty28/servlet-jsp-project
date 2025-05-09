package de.zeroco.servlet;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebFilter("/submitForm") 
public class ValidationFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)  throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        if (name == null || name.trim().isEmpty() || email == null || email.trim().isEmpty()) {
            req.setAttribute("error", "Name and email cannot be empty!");
            req.getRequestDispatcher("form.jsp").forward(req, res); 
        } else {
            chain.doFilter(request, response); 
        }
    }
}
