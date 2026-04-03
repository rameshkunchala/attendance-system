package com.app.controller;

import com.app.model.Attendance;
import com.app.service.AttendanceService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Date;

@WebServlet("/markAttendance")
public class AttendanceServlet extends HttpServlet {

    private AttendanceService service = new AttendanceService();

    @Override
    
    @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
    System.out.println("=== AttendanceServlet HIT ===");

    Attendance attendance = new Attendance(
            101,
            "Ramesh",
            java.sql.Date.valueOf("2026-04-03"),
            "Present"
    );

    service.markAttendance(attendance);

    resp.sendRedirect(req.getContextPath() + "/report.jsp");
}
}