<!DOCTYPE html>
<html>
<head>
    <title>Mark Attendance</title>
    <style>
        body {
            font-family: Arial;
            background: #f4f6f8;
            padding: 40px;
        }
        .container {
            width: 500px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
        }
        button {
            width: 100%;
            padding: 12px;
            background: #2196F3;
            color: white;
            border: none;
            border-radius: 8px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Mark Student Attendance</h2>
    <form action="${pageContext.request.contextPath}/markAttendance" method="post">
        <input type="number" name="studentId" placeholder="Student ID" required>
        <input type="text" name="studentName" placeholder="Student Name" required>
        <input type="date" name="attendanceDate" required>
        <select name="status">
            <option value="Present">Present</option>
            <option value="Absent">Absent</option>
        </select>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>