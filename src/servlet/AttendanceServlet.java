package com.app.servlet;

import com.app.dao.AttendanceDAO;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/markAttendance")
public class AttendanceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        AttendanceDAO dao = new AttendanceDAO();

        int studentId = Integer.parseInt(req.getParameter("studentId"));
        String status = req.getParameter("status");

        dao.saveAttendance(studentId, status);
        resp.sendRedirect("attendance.jsp?success=1");
    }
}