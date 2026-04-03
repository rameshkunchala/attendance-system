<%@ page import="java.sql.*" %>
<%@ page import="com.app.util.DBUtil" %>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance Report</title>
    <style>
        body {
            font-family: Arial;
            background: #eef2f7;
            padding: 30px;
        }
        h2 {
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 14px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background: #f9f9f9;
        }
    </style>
</head>
<body>

<h2>Attendance Report</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Date</th>
        <th>Status</th>
    </tr>

    <%
        try {
            Connection con = DBUtil.getConnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(
                "SELECT student_id, student_name, attendance_date, status FROM attendance ORDER BY id DESC"
            );

            while(rs.next()) {
    %>
    <tr>
        <td><%= rs.getInt("student_id") %></td>
        <td><%= rs.getString("student_name") %></td>
        <td><%= rs.getDate("attendance_date") %></td>
        <td><%= rs.getString("status") %></td>
    </tr>
    <%
            }

            con.close();
        } catch(Exception e) {
            out.println("<tr><td colspan='4'>Error loading report</td></tr>");
            e.printStackTrace();
        }
    %>
</table>

</body>
</html>