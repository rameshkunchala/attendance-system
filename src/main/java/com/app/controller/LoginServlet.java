package com.app.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        if ("admin".equals(username) && "admin123".equals(password)) {
            HttpSession session = req.getSession();
            session.setAttribute("user", username);
            resp.sendRedirect(req.getContextPath() + "/dashboard.jsp");
        } else {
            resp.sendRedirect(req.getContextPath() + "/login.jsp");
        }
    }
}