package com.app.dao;

import com.app.model.Attendance;
import com.app.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AttendanceDAO {

    public void saveAttendance(Attendance attendance) {
        String sql = "INSERT INTO attendance(student_id, student_name, attendance_date, status) VALUES (?, ?, ?, ?)";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, attendance.getStudentId());
            ps.setString(2, attendance.getStudentName());
            ps.setDate(3, attendance.getAttendanceDate());
            ps.setString(4, attendance.getStatus());

            int rows = ps.executeUpdate();
            System.out.println("Inserted rows = " + rows);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}