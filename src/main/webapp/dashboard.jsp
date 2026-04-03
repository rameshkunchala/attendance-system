<div class="actions">
<%
String role = (String) session.getAttribute("role");
if ("admin".equals(role)) {
%>
    <a href="attendance.jsp" class="btn primary">Mark Attendance</a>
<%
}
%>
    <a href="report.jsp" class="btn success">View Reports</a>
</div>