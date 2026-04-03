package com.app.service;

import com.app.dao.AttendanceDAO;
import com.app.model.Attendance;

public class AttendanceService {

    private AttendanceDAO dao = new AttendanceDAO();

    public void markAttendance(Attendance attendance) {
        dao.saveAttendance(attendance);
    }
}