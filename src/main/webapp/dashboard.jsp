<%@ page contentType="text/html;charset=UTF-8" language="java" %>
        .btn {
            padding: 15px 28px;
            border-radius: 12px;
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 16px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 18px rgba(0,0,0,0.25);
        }

        .primary {
            background: linear-gradient(135deg, #3498db, #2980b9);
        }

        .success {
            background: linear-gradient(135deg, #27ae60, #1e8449);
        }
    </style>
</head>
<body>
<div class="container">
    <h1>📘 Attendance Management Dashboard</h1>

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

    <h3 style="color:#555;">Quick Actions</h3>

    <div class="actions">
        <% if ("admin".equals(role)) { %>
            <a href="attendance.jsp" class="btn primary">📝 Mark Attendance</a>
        <% } %>

        <a href="report.jsp" class="btn success">📊 View Reports</a>
    </div>
</div>
</body>
</html>