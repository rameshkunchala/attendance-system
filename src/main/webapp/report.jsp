    <%@ page import="java.sql.*" %>
<html>
<body>
<h2>Attendance Report</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Student ID</th>
        <th>Status</th>
        <th>Date</th>
    </tr>

<%
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/attendance_db",
        "root",
        "Root@12345"
    );

    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM attendance");

    while (rs.next()) {
%>
    <tr>
        <td><%= rs.getInt("id") %></td>
        <td><%= rs.getInt("student_id") %></td>
        <td><%= rs.getString("status") %></td>
        <td><%= rs.getTimestamp("created_at") %></td>
    </tr>
<%
    }
    con.close();
%>

</table>
</body>
</html>