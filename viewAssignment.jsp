<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Assignment Grades</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            position: relative; /* Allows positioning of the button */
            min-height: 100vh; /* Ensures body takes full height of the screen */
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }

        /* Header Style */
        header {
            background-color: #388e3c; /* Dark green background */
            color: white;
            text-align: center;
            padding: 20px 0;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        header h1 {
            font-size: 2.5rem;
            margin: 0;
        }

        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        /* Back Button Styles */
        .back-btn {
            position: absolute; /* Positioning it at the bottom left */
            left: 20px; /* Space from the left edge */
            bottom: 20px; /* Space from the bottom edge */
            width: 150px;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            text-align: center;
            border: none;
            border-radius: 5px;
            text-decoration: none;
        }

        .back-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <h1>View Assignment Grades</h1>
    </header>

    <div class="container">
        <!-- Example Table for Assignment Stats -->
        <table>
            <thead>
                <tr>
                    <th>Assignment ID</th>
                    <th>Assignment Name</th>
                    <th>Status</th>
                    <th>Submission Date</th>
                    <th>Grade</th>
                </tr>
            </thead>
            <tbody>
                <!-- Example rows (you can dynamically generate these with server-side code) -->
                <tr>
                    <td>1</td>
                    <td>Math Assignment</td>
                    <td>Completed</td>
                    <td>2024-12-01</td>
                    <td>A</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Physics Assignment</td>
                    <td>In Progress</td>
                    <td>2024-12-05</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Chemistry Assignment</td>
                    <td>Not Submitted</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- Back Button -->
    <a href=student.jsp class="back-btn">Back to Dashboard</a>

</body>
</html>
