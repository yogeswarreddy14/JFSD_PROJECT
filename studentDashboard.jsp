<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #ffd54f, #64b5f6); /* New gradient background */
        }

        .dashboard-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: left;
            height: 100%;
            padding: 60px 40px; /* More spacious padding */
            background-color: #ffffff;
            box-shadow: 0 12px 45px rgba(0, 0, 0, 0.1); /* Adjusted shadow for depth */
            border-radius: 20px;
            width: 85%;
            max-width: 1300px;
            margin: 0 auto;
            transform: translateY(70px); /* Greater floating effect */
        }

        .navbar {
            background-color: #0288d1; /* New color for the navbar */
            padding: 20px 35px; /* Adjusted padding for spaciousness */
            width: 100%;
            border-radius: 15px;
            margin-bottom: 40px;
            box-shadow: 0 6px 25px rgba(0, 0, 0, 0.15);
        }

        .navbar h2 {
            text-align: center;
            color: #ffffff;
            margin-bottom: 20px;
            font-size: 28px;
            font-weight: bold;
        }

        .navbar ul {
            list-style-type: none;
            padding: 0;
            display: flex;
            justify-content: space-evenly;
        }

        .navbar li {
            margin: 15px 0;
        }

        .navbar a {
            text-decoration: none;
            color: white;
            font-size: 18px;
            padding: 14px 24px;
            border-radius: 10px;
            background-color: #01579b;
            transition: background-color 0.3s ease, transform 0.2s;
            display: block;
            text-align: center;
        }

        .navbar a:hover {
            background-color: #0288d1; /* Lighter shade on hover */
            transform: scale(1.05); /* Slight hover effect */
        }

        .dashboard-content {
            text-align: center;
            color: #333;
            max-width: 800px;
            width: 100%;
        }

        .dashboard-content h3 {
            color: #0288d1; /* Matching color to navbar */
            margin-bottom: 30px; /* Increased space below heading */
            font-size: 40px;
            font-weight: bold;
        }

        .dashboard-content p {
            font-size: 18px;
            margin-top: 15px;
            line-height: 1.8;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .navbar {
                padding: 15px;
            }

            .navbar ul {
                flex-direction: column;
                gap: 10px;
            }

            .navbar a {
                padding: 12px 20px;
            }

            .dashboard-content {
                padding: 15px;
            }
        }

        /* Dark theme option */
        .dark-theme {
            background-color: #263238;
        }

        .dark-theme .navbar {
            background-color: #1c313a;
        }

        .dark-theme .navbar h2 {
            color: #81d4fa;
        }

        .dark-theme .navbar a {
            background-color: #004d40;
        }

        .dark-theme .navbar a:hover {
            background-color: #00796b;
        }

        .dark-theme .dashboard-content {
            background-color: #37474f;
            color: #e0f7fa;
        }

        .dark-theme .dashboard-content h3 {
            color: #81d4fa;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <nav class="navbar">
            <h2>Student Dashboard</h2>
            <ul>
                <li><a href="viewAssignmentStatus.jsp">Assignment Status</a></li>
                <li><a href="viewGrades.jsp">Grades</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </nav>
        <div class="dashboard-content">
            <h3>Welcome, Student!</h3>
            <p>Stay up-to-date with your assignments and grades. Navigate through the menu to access your academic records.</p>
        </div>
    </div>
</body>
</html>
