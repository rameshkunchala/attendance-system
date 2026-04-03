<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String role = (String) session.getAttribute("role");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 85%;
            margin: 40px auto;
            text-align: center;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 30px;
        }

        .cards {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
            margin-bottom: 40px;
        }

        .card {
            background: white;
            padding: 25px;
            width: 220px;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        .card h3 {
            margin: 0;
            color: #555;
        }

        .card p {
            font-size: 28px;
            font-weight: bold;
            margin-top: 12px;
            color: #2c3e50;
        }

        .actions {
            display: flex;
            justify-content: center;
            gap: 25px;
            margin-top: 30px;
            flex-wrap: wrap;
        }

        .btn {
            padding: 15px 28px;
            border-radius: 12px;
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 16px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        .btn:hover {
            transform: translateY(-3px);
        }

        .primary {
            background: #3498db;
        }

        .success {
            background: #27ae60;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>📘 Attendance Management Dashboard</h1>

    <div class="cards">
        <div class="card">
            <h3>Total Students</h3>
            <p>120</p>
        </div>
        <div class="card">
            <h3>Present Today</h3>
            <p>98</p>
        </div>
        <div class="card">
            <h3>Absent Today</h3>
            <p>22</p>
        </div>
    </div>

    <h3>Quick Actions</h3>

    <div class="actions">
        <%
            if ("admin".equals(role)) {
        %>
            <a href="attendance.jsp" class="btn primary">📝 Mark Attendance</a>
        <%
            }
        %>

        <a href="report.jsp" class="btn success">📊 View Reports</a>
    </div>
</div>
</body>
</html>