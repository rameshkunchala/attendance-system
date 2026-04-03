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

            ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
            InputStream input = classLoader.getResourceAsStream("db.properties");

            if (input == null) {
                throw new RuntimeException("db.properties file not found in classpath");
            }

            props.load(input);

            jdbcURL = props.getProperty("db.url");
            jdbcUser = props.getProperty("db.username");
            jdbcPass = props.getProperty("db.password");

            System.out.println("DB URL Loaded = " + jdbcURL);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void saveAttendance(Attendance attendance) {
        String sql = "INSERT INTO attendance(student_id, student_name, attendance_date, status) VALUES (?, ?, ?, ?)";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection con = DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPass);
                 PreparedStatement ps = con.prepareStatement(sql)) {

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