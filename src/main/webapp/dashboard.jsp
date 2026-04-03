<!DOCTYPE html>
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

    <div class="container">
        <div class="cards">
            <div class="card">
                <h3>Total Students</h3>
                <p>120</p>
            </div>
            <div class="card">
                <h3>Present Today</h3>
                <p>98</p>
            </div>
            <div class="card">
                <h3>Absent Today</h3>
                <p>22</p>
            </div>
        </div>

        <div class="actions">
            <a href="attendance.jsp" class="btn primary">Mark Attendance</a>
            <a href="report.jsp" class="btn success">View Reports</a>
        </div>
    </div>
</body>
</html>