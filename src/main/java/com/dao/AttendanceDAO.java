package com.app.dao;

import com.app.model.Attendance;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class AttendanceDAO {

    private String jdbcURL;
    private String jdbcUser;
    private String jdbcPass;

    public AttendanceDAO() {
        try {
            Properties props = new Properties();
            InputStream input = getClass().getClassLoader().getResourceAsStream("db.properties");
            props.load(input);

            jdbcURL = props.getProperty("db.url");
            jdbcUser = props.getProperty("db.username");
            jdbcPass = props.getProperty("db.password");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void saveAttendance(Attendance attendance) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPass);

            String sql = "INSERT INTO attendance(student_id, student_name, attendance_date, status) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, attendance.getStudentId());
            ps.setString(2, attendance.getStudentName());
            ps.setDate(3, attendance.getAttendanceDate());
            ps.setString(4, attendance.getStatus());

            ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}