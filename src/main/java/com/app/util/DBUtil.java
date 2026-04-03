package com.app.util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DBUtil {

    public static Connection getConnection() {
        try {
            Properties props = new Properties();

            InputStream input = DBUtil.class.getClassLoader()
                    .getResourceAsStream("db.properties");

            if (input == null) {
                throw new RuntimeException("db.properties not found in classpath");
            }

            props.load(input);

            String url = props.getProperty("db.url");
            String user = props.getProperty("db.username");
            String password = props.getProperty("db.password");

            System.out.println("URL = " + url);
            System.out.println("USER = " + user);

            Class.forName("com.mysql.cj.jdbc.Driver");

            return DriverManager.getConnection(url, user, password);

        } catch (Exception e) {
            System.out.println("=== DB CONNECTION FAILED ===");
            e.printStackTrace();
            throw new RuntimeException("DB connection failed", e);
        }
    }
}