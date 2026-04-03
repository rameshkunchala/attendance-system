package com.app.controller;

import com.app.model.Attendance;
import com.app.service.AttendanceService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Date;

@WebServlet("/markAttendance")
public class AttendanceServlet extends HttpServlet {

    private AttendanceService service = new AttendanceService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || !"admin".equals(session.getAttribute("role"))) {
            response.sendRedirect("login.jsp");
            return;
        }

        int studentId = Integer.parseInt(request.getParameter("studentId"));
        String studentName = request.getParameter("studentName");
        String status = request.getParameter("status");

        Attendance attendance = new Attendance(
                studentId,
                studentName,
                new Date(System.currentTimeMillis()),
                status
        );

        service.markAttendance(attendance);
        response.sendRedirect("attendance.jsp");
    }
}