<html>
<body>
<h2>Mark Student Attendance</h2>
<form action="markAttendance" method="post">
    Student ID: <input type="number" name="studentId"><br>
    Status:
    <select name="status">
        <option value="Present">Present</option>
        <option value="Absent">Absent</option>
    </select><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>