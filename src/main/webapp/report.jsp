<%@ page import="java.sql.*" %>
<%@ page import="com.app.util.DBUtil" %>

<%
String username = (String) session.getAttribute("username");
if (username == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>Attendance Reports</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            padding: 40px;
            color: white;
        }

        .container {
            max-width: 1100px;
            margin: auto;
            background: rgba(255,255,255,0.12);
            backdrop-filter: blur(10px);
            padding: 30px;
            border-radius: 18px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            font-size: 30px;
        }

        .search-box {
            display: flex;
            gap: 15px;
            margin-bottom: 25px;
        }

        input {
            flex: 1;
            padding: 12px;
            border-radius: 10px;
            border: none;
            outline: none;
            font-size: 16px;
        }

        .btn {
            padding: 12px 20px;
            background: #2ecc71;
            border: none;
            border-radius: 10px;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }

        .btn:hover {
            background: #27ae60;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            color: black;
            border-radius: 10px;
            overflow: hidden;
        }

        th {
            background: #34495e;
            color: white;
            padding: 14px;
        }

        td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background: #f4f4f4;
        }

        .back {
            display: inline-block;
            margin-top: 20px;
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        .back:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>📋 Attendance Reports</h2>

    <form method="get" class="search-box">
        <input type="text" name="studentId" placeholder="Enter Student ID">
        <button type="submit" class="btn">🔍 Search</button>
    </form>

    <table>
        <tr>
            <th>ID</th>
            <th>Student ID</th>
            <th>Student Name</th>
            <th>Date</th>
            <th>Status</th>
        </tr>

        <%
        try (Connection con = DBUtil.getConnection()) {

            String studentId = request.getParameter("studentId");
            PreparedStatement ps;

            if (studentId != null && !studentId.trim().isEmpty()) {
                ps = con.prepareStatement(
                    "SELECT * FROM attendance WHERE student_id = ? ORDER BY attendance_date DESC"
                );
                ps.setInt(1, Integer.parseInt(studentId));
            } else {
                ps = con.prepareStatement(
                    "SELECT * FROM attendance ORDER BY attendance_date DESC"
                );
            }

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

    <a href="dashboard.jsp" class="back">⬅ Back to Dashboard</a>
</div>

</body>
</html>