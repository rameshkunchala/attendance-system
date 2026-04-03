package com.app.dao;

import java.sql.*;
import com.app.util.DBUtil;

public class AttendanceDAO {

    public void saveAttendance(int studentId, String studentName, String status) {
        try (Connection con = DBUtil.getConnection()) {

            String sql = "INSERT INTO attendance(student_id, student_name, attendance_date, status) VALUES (?, ?, CURDATE(), ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, studentId);
            ps.setString(2, studentName);
            ps.setString(3, status);

            ps.executeUpdate();

            System.out.println("=== ROW INSERTED SUCCESS ===");

        } catch (Exception e) {
            System.out.println("=== DAO INSERT FAILED ===");
            e.printStackTrace();
        }
    }

    public int getTotalStudents() {
    int count = 0;
    String sql = "SELECT COUNT(DISTINCT student_id) FROM attendance";

    try (Connection con = DBUtil.getConnection();
         PreparedStatement ps = con.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {

        if (rs.next()) {
            count = rs.getInt(1);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return count;
}
public int getPresentToday() {
    int count = 0;
    String sql = "SELECT COUNT(*) FROM attendance WHERE attendance_date = CURDATE() AND status='Present'";

    try (Connection con = DBUtil.getConnection();
         PreparedStatement ps = con.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {

        if (rs.next()) {
            count = rs.getInt(1);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return count;
}
public int getPresentToday() {
    int count = 0;
    String sql = "SELECT COUNT(*) FROM attendance WHERE attendance_date = CURDATE() AND status='Present'";

    try (Connection con = DBUtil.getConnection();
         PreparedStatement ps = con.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {

        if (rs.next()) {
            count = rs.getInt(1);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return count;
}
}