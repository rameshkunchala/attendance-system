<%@ page import="com.app.service.AttendanceService" %>
<%
    AttendanceService service = new AttendanceService();

    int totalStudents = service.getTotalStudents();
    int presentToday = service.getPresentToday();
    int absentToday = service.getAbsentToday();

    String role = (String) session.getAttribute("role");
    String username = (String) session.getAttribute("username");

    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Attendance Dashboard</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #1abc9c, #3498db);
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px;
        }

        .dashboard {
            width: 100%;
            max-width: 1100px;
            background: rgba(255,255,255,0.15);
            backdrop-filter: blur(12px);
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 8px 30px rgba(0,0,0,0.2);
            color: white;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 35px;
        }

        .header h1 {
            font-size: 32px;
        }

        .welcome {
            font-size: 18px;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
            margin-bottom: 35px;
        }

        .card {
            background: rgba(255,255,255,0.2);
            padding: 30px;
            border-radius: 18px;
            text-align: center;
            box-shadow: 0 6px 18px rgba(0,0,0,0.15);
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h3 {
            font-size: 22px;
            margin-bottom: 15px;
        }

        .card p {
            font-size: 42px;
            font-weight: bold;
        }

        .actions {
            display: flex;
            gap: 20px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .btn {
            padding: 14px 28px;
            border-radius: 10px;
            text-decoration: none;
            color: white;
            font-size: 18px;
            font-weight: bold;
            transition: 0.3s;
        }

        .primary {
            background: #2ecc71;
        }

        .success {
            background: #e67e22;
        }

        .logout {
            background: #e74c3c;
        }

        .btn:hover {
            opacity: 0.9;
            transform: scale(1.03);
        }

        @media (max-width: 768px) {
            .cards {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

<div class="dashboard">
    <div class="header">
        <h1>📊 Attendance Dashboard</h1>
        <div class="welcome">Welcome, <b><%= username %></b> (<%= role %>)</div>
    </div>

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
        <% if ("admin".equals(role)) { %>
            <a href="attendance.jsp" class="btn primary">✅ Mark Attendance</a>
        <% } %>

        <a href="report.jsp" class="btn success">📄 View Reports</a>
        <a href="login.jsp" class="btn logout">🚪 Logout</a>
    </div>
</div>

</body>
</html>