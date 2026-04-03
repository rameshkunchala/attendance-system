@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

    int studentId = Integer.parseInt(req.getParameter("studentId"));
    String studentName = req.getParameter("studentName");
    java.sql.Date attendanceDate =
            java.sql.Date.valueOf(req.getParameter("attendanceDate"));
    String status = req.getParameter("status");

    Attendance attendance = new Attendance(
            studentId,
            studentName,
            attendanceDate,
            status
    );

    service.markAttendance(attendance);

    resp.sendRedirect(req.getContextPath() + "/report.jsp");
}