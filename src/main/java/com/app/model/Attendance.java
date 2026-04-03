package com.app.model;

import java.sql.Date;

public class Attendance {
    private int studentId;
    private String studentName;
    private Date attendanceDate;
    private String status;

    public Attendance() {}

    public Attendance(int studentId, String studentName, Date attendanceDate, String status) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.attendanceDate = attendanceDate;
        this.status = status;
    }

    public int getStudentId() { return studentId; }
    public void setStudentId(int studentId) { this.studentId = studentId; }

    public String getStudentName() { return studentName; }
    public void setStudentName(String studentName) { this.studentName = studentName; }

    public Date getAttendanceDate() { return attendanceDate; }
    public void setAttendanceDate(Date attendanceDate) { this.attendanceDate = attendanceDate; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}