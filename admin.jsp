<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #121212; /* Dark background for the whole page */
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .dashboard-container {
            display: flex;
            width: 100%;
            max-width: 1200px;
            background-color: #2a2a2a; /* Dark background */
            border-radius: 20px;
            overflow: hidden;
            height: 80vh;
            flex-direction: column;
            padding: 20px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
        }

        .navbar {
            background-color: #333; /* Dark grey for navbar */
            color: white;
            width: 100%;
            padding: 20px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-radius: 20px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        .navbar h2 {
            font-size: 26px;
            margin: 0;
        }

        .navbar ul {
            list-style-type: none;
            display: flex;
        }

        .navbar li {
            margin-left: 20px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            padding: 10px 15px;
            background-color: #444; /* Darker grey for buttons */
            border-radius: 50px;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #666; /* Lighter grey on hover */
        }

        .content {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: space-between;
            margin-top: 20px;
        }

        .card {
            background-color: #333;
            border-radius: 15px;
            padding: 20px;
            width: 45%;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3);
        }

        .card h3 {
            color: white;
            font-size: 22px;
            margin-bottom: 15px;
        }

        .card p {
            color: #ccc;
            font-size: 16px;
            line-height: 1.5;
        }

        .cta-button {
            background-color: #444;
            color: white;
            padding: 12px 25px;
            font-size: 16px;
            border-radius: 50px;
            text-align: center;
            margin-top: 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .cta-button:hover {
            background-color: #666;
        }

        @media (max-width: 768px) {
            .dashboard-container {
                padding: 10px;
            }

            .navbar {
                flex-direction: column;
                align-items: flex-start;
            }

            .content {
                flex-direction: column;
                align-items: flex-start;
            }

            .card {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <nav class="navbar">
            <h2>Admin Dashboard</h2>
            <ul>
                <li><a href="addAssignment.jsp">Add Assignment</a></li>
                <li><a href="addDeadline.jsp">Add Deadline</a></li>
                <li><a href="addPendingStudents.jsp">Add Pending Students</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </nav>
        <div class="content">
            <div class="card">
                <h3>Manage Assignments</h3>
                <p>View and manage all student assignments, including deadlines, submissions, and grades.</p>
                <button class="cta-button" onclick="location.href='addAssignment.jsp'">Manage Assignments</button>
            </div>
            <div class="card">
                <h3>Manage Deadlines</h3>
                <p>Set and track deadlines for all courses, ensuring that students stay on top of their assignments.</p>
                <button class="cta-button" onclick="location.href='addDeadline.jsp'">Set Deadlines</button>
            </div>
            <div class="card">
                <h3>Pending Students</h3>
                <p>Review and approve student submissions that are pending review, ensuring timely evaluations.</p>
                <button class="cta-button" onclick="location.href='addPendingStudents.jsp'">View Pending</button>
            </div>
            <div class="card">
                <h3>Logout</h3>
                <p>Exit the admin dashboard securely by logging out of your account.</p>
                <button class="cta-button" onclick="location.href='logout.jsp'">Logout</button>
            </div>
        </div>
    </div>
</body>
</html>
