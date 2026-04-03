package com.app.dao;

import com.app.model.Attendance;
import java.sql.*;

public class AttendanceDAO {

    private final String jdbcURL = "jdbc:mysql://localhost:3306/attendance_db";
    private final String jdbcUser = "root";
    private final String jdbcPass = "Root@12345";

    public void saveAttendance(Attendance attendance) {
        String sql = "INSERT INTO attendance(student_id, student_name, attendance_date, status) VALUES (?, ?, ?, ?)";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection con = DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPass);
                 PreparedStatement ps = con.prepareStatement(sql)) {

                System.out.println("=== DB CONNECTED ===");

                ps.setInt(1, attendance.getStudentId());
                ps.setString(2, attendance.getStudentName());
                ps.setDate(3, attendance.getAttendanceDate());
                ps.setString(4, attendance.getStatus());

                int rows = ps.executeUpdate();
                System.out.println("Inserted rows = " + rows);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}