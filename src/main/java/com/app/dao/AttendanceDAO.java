package com.app.dao;

import com.app.model.Attendance;
import com.app.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AttendanceDAO {

    public void saveAttendance(Attendance attendance) {
        System.out.println("=== DAO METHOD START ===");

        String sql = "INSERT INTO attendance(student_id, student_name, attendance_date, status) VALUES (?, ?, ?, ?)";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            System.out.println("=== DB CONNECTED ===");

            ps.setInt(1, attendance.getStudentId());
            ps.setString(2, attendance.getStudentName());
            ps.setDate(3, attendance.getAttendanceDate());
            ps.setString(4, attendance.getStatus());

            int rows = ps.executeUpdate();
            System.out.println("Inserted rows = " + rows);

        } catch (Exception e) {
            System.out.println("=== DAO INSERT FAILED ===");
            e.printStackTrace();
        }
    }
}

public int getTotalStudents() {
    int count = 0;
    try (Connection con = DBUtil.getConnection();
         PreparedStatement ps = con.prepareStatement("SELECT COUNT(DISTINCT student_id) FROM attendance");
         ResultSet rs = ps.executeQuery()) {
        if (rs.next()) count = rs.getInt(1);
    } catch (Exception e) {
        e.printStackTrace();
    }
    return count;
}

public int getPresentTodayCount() {
    int count = 0;
    try (Connection con = DBUtil.getConnection();
         PreparedStatement ps = con.prepareStatement(
             "SELECT COUNT(*) FROM attendance WHERE attendance_date = CURDATE() AND status='Present'");
         ResultSet rs = ps.executeQuery()) {
        if (rs.next()) count = rs.getInt(1);
    } catch (Exception e) {
        e.printStackTrace();
    }
    return count;
}