<%@ page import="java.sql.*" %>
<%@ page import="com.app.util.DBUtil" %>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance Report</title>
    <style>
        body {
            font-family: Arial;
            background: #f4f6f8;
            padding: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background: #3498db;
            color: white;
        }
    </style>
</head>
<body>

<h2>Attendance Report</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Student ID</th>
        <th>Name</th>
        <th>Date</th>
        <th>Status</th>
    </tr>

<%
    try (Connection con = DBUtil.getConnection()) {
        PreparedStatement ps = con.prepareStatement(
            "SELECT * FROM attendance ORDER BY id DESC");
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
%>
<tr>
    <td><%= rs.getInt("id") %></td>
    <td><%= rs.getInt("student_id") %></td>
    <td><%= rs.getString("student_name") %></td>
    <td><%= rs.getDate("attendance_date") %></td>
    <td><%= rs.getString("status") %></td>
</tr>
<%
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
</table>

</body>
</html>