<%
String username = (String) session.getAttribute("username");
String role = (String) session.getAttribute("role");

if (username == null) {
    response.sendRedirect("login.jsp");
    return;
}

if (!"admin".equals(role)) {
    response.sendRedirect("dashboard.jsp");
    return;
}
%>
<!-- <%
String role = (String) session.getAttribute("role");
String username = (String) session.getAttribute("username");

if (username == null) {
    response.sendRedirect("login.jsp");
    return;
}

if (!"admin".equals(role)) {
    response.sendRedirect("dashboard.jsp");
    return;
}
%> -->

<!DOCTYPE html>
<html>
<head>
    <title>Mark Attendance</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #16a085, #2980b9);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            width: 420px;
            background: rgba(255,255,255,0.15);
            backdrop-filter: blur(10px);
            padding: 35px;
            border-radius: 20px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.2);
            color: white;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            font-size: 28px;
        }

        label {
            display: block;
            margin: 12px 0 6px;
            font-weight: bold;
        }

        input, select {
            width: 100%;
            padding: 14px;
            border: none;
            border-radius: 10px;
            outline: none;
            font-size: 16px;
            margin-bottom: 10px;
        }

        .btn {
            width: 100%;
            padding: 14px;
            margin-top: 15px;
            border: none;
            border-radius: 10px;
            background: #2ecc71;
            color: white;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background: #27ae60;
            transform: scale(1.02);
        }

        .back {
            display: block;
            text-align: center;
            margin-top: 18px;
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
    <h2>📝 Mark Attendance</h2>

    <form action="${pageContext.request.contextPath}/markAttendance" method="post">
        <label>Student ID</label>
        <input type="number" name="studentId" required>

        <label>Student Name</label>
        <input type="text" name="studentName" required>

        <label>Status</label>
        <select name="status" required>
            <option value="Present">Present</option>
            <option value="Absent">Absent</option>
        </select>

        <button type="submit" class="btn">✅ Submit Attendance</button>
    </form>

    <a href="dashboard.jsp" class="back">⬅ Back to Dashboard</a>
</div>

</body>
</html>