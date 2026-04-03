package com.app.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();

        // Admin login
        if ("admin".equals(username) && "admin123".equals(password)) {
            session.setAttribute("username", username);
            session.setAttribute("role", "admin");
            response.sendRedirect("dashboard.jsp");
        }
        // User login
        else if ("user".equals(username) && "user123".equals(password)) {
            session.setAttribute("username", username);
            session.setAttribute("role", "user");
            response.sendRedirect("dashboard.jsp");
        }
        else {
            response.sendRedirect("login.jsp?error=Invalid credentials");
        }
    }
}