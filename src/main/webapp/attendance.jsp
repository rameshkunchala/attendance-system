<%
String role = (String) session.getAttribute("role");
if (role == null || !role.equals("admin")) {
    response.sendRedirect("login.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
<head><title>Mark Attendance</title></head>
<body>
<h2>Mark Attendance</h2>
<form action="${pageContext.request.contextPath}/markAttendance" method="post">
    Student ID: <input type="number" name="studentId" required><br><br>
    Student Name: <input type="text" name="studentName" required><br><br>
    Status:
    <select name="status">
        <option value="Present">Present</option>
        <option value="Absent">Absent</option>
    </select><br><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>