<%@ page import="com.app.dao.AttendanceDAO" %>
<%
    AttendanceDAO dao = new AttendanceDAO();
    int totalStudents = dao.getTotalStudents();
    int presentToday = dao.getPresentTodayCount();
    int absentToday = totalStudents - presentToday;
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f6f8; margin: 0; }
        .navbar { background: #2c3e50; color: white; padding: 20px; font-size: 28px; font-weight: bold; text-align: center; }
        .container { padding: 30px; }
        .cards { display: flex; gap: 20px; margin-bottom: 30px; }
        .card { flex: 1; background: white; padding: 30px; border-radius: 15px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); text-align: center; }
        .card h3 { margin: 0; color: #555; }
        .card p { font-size: 30px; font-weight: bold; margin-top: 10px; }
        .actions { text-align: center; }
        .btn { display: inline-block; margin: 10px; padding: 14px 24px; border-radius: 10px; text-decoration: none; color: white; font-weight: bold; }
        .primary { background: #3498db; }
        .success { background: #27ae60; }
    </style>
</head>
<body>
<div class="navbar">Attendance Management Dashboard</div>
<div class="container">
    <div class="cards">
        <div class="card">
            <h3>Total Students</h3>
            <p><%= totalStudents %></p>
        </div>
        <div class="card">
            <h3>Present Today</h3>
            <p><%= presentToday %></p>
        </div>
        <div class="card">
            <h3>Absent Today</h3>
            <p><%= absentToday %></p>
        </div>
    </div>

    <div class="actions">
        <a href="attendance.jsp" class="btn primary">Mark Attendance</a>
        <a href="report.jsp" class="btn success">View Reports</a>
    </div>
</div>
</body>
</html>