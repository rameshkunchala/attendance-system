<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String role = (String) session.getAttribute("role");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 85%;
            margin: 40px auto;
            text-align: center;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 30px;
        }

        .cards {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
            margin-bottom: 40px;
        }

        .card {
            background: white;
            padding: 25px;
            width: 220px;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        .card h3 {
            margin: 0;
            color: #555;
        }

        .card p {
            font-size: 28px;
            font-weight: bold;
            margin-top: 12px;
            color: #2c3e50;
        }

        .actions {
            display: flex;
            justify-content: center;
            gap: 25px;
            margin-top: 30px;
            flex-wrap: wrap;
        }

        .btn {
            padding: 15px 28px;
            border-radius: 12px;
            text-decoration: none;
            color: white;
</html>