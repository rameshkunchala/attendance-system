package com.app.dao;

import java.sql.*;

public class AttendanceDAO {
    private final String jdbcURL = "jdbc:mysql://localhost:3306/attendance_db";
    private final String jdbcUser = "root";
    private final String jdbcPass = "Root@12345";

    public void saveAttendance(int studentId, String status) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPass);

            String sql = "INSERT INTO attendance(student_id, status) VALUES (?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, studentId);
            ps.setString(2, status);
            ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}