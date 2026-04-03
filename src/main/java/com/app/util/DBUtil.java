package com.app.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {

    public static Connection getConnection() {
        try {
            String url = "jdbc:mysql://localhost:3306/attendance_db";
            String user = "root";
            String password = "Root@12345";

            Class.forName("com.mysql.cj.jdbc.Driver");

            System.out.println("Trying DB connection...");
            return DriverManager.getConnection(url, user, password);

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("DB connection failed", e);
        }
    }
}