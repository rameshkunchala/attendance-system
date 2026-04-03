package com.app.controller;

import com.app.model.Attendance;
import com.app.service.AttendanceService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/markAttendance")
public class AttendanceServlet extends HttpServlet {

    private AttendanceService service = new AttendanceService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        int studentId = Integer.parseInt(req.getParameter("studentId"));
        String studentName = req.getParameter("studentName");
        java.sql.Date attendanceDate =
                java.sql.Date.valueOf(req.getParameter("attendanceDate"));
        String status = req.getParameter("status");

        Attendance attendance = new Attendance(
                studentId,
                studentName,
                attendanceDate,
                status
        );

        service.markAttendance(attendance);

        resp.sendRedirect(req.getContextPath() + "/report.jsp");
    }
}
