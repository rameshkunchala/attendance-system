package com.app.service;

import com.app.dao.AttendanceDAO;
import com.app.model.Attendance;

public class AttendanceService {

    private AttendanceDAO dao = new AttendanceDAO();

    public void markAttendance(Attendance attendance) {
        dao.saveAttendance(
                attendance.getStudentId(),
                attendance.getStudentName(),
                attendance.getStatus()
        );
    }

    public int getTotalStudents() {
        return dao.getTotalStudents();
    }

    public int getPresentToday() {
        return dao.getPresentToday();
    }

    public int getAbsentToday() {
        return dao.getAbsentToday();
    }
}