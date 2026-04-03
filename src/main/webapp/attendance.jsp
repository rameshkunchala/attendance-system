<html>
<body>
<h2>Mark Attendance</h2>

<form action="${pageContext.request.contextPath}/markAttendance" method="post">
    Student ID: <input type="number" name="studentId"><br><br>
    Student Name: <input type="text" name="studentName"><br><br>
    Date: <input type="date" name="attendanceDate"><br><br>

    Status:
    <select name="status">
        <option value="Present">Present</option>
        <option value="Absent">Absent</option>
    </select><br><br>

    <input type="submit" value="Submit Attendance">
</form>
</body>
</html>