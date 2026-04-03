<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            margin: 0;
        }
        .navbar {
            background: #2c3e50;
            color: white;
            padding: 15px 30px;
            font-size: 24px;
            font-weight: bold;
        }
        .container {
            padding: 30px;
        }
        .cards {
            display: flex;
            gap: 20px;
            margin-bottom: 30px;
        }
        .card {
            flex: 1;
            background: white;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            text-align: center;
        }
        .card h3 {
            margin: 0;
            color: #555;
        }
        .card p {
            font-size: 28px;
            font-weight: bold;
            margin: 10px 0 0;
        }
        .actions {
            display: flex;
            gap: 20px;
        }
        .btn {
            display: inline-block;
            padding: 14px 22px;
            border-radius: 10px;
            text-decoration: none;
            color: white;
            font-weight: bold;
        }
        .primary { background: #3498db; }
        .success { background: #27ae60; }
    </style>
</head>
<body>
    <div class="navbar">Attendance Management Dashboard</div>
</html>