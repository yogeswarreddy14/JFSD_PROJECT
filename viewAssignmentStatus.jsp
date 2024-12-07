<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Assignment Status</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e8f5e9; /* Light green background */
            display: flex;
            flex-direction: column;
            justify-content: flex-start; /* Align content from the top */
            align-items: center; /* Center the content horizontally */
            padding: 10px;
        }

        /* Header Styles */
        header {
            background-color: #388e3c; /* Dark green for header background */
            width: 100%;
            padding: 20px 0;
            text-align: center;
        }

        header h1 {
            color: white; /* White text for the header */
            font-size: 2rem;
        }

        .dashboard-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            width: 70%; /* Medium width (70% of viewport width) */
            max-width: 1000px; /* Maximum width of 1000px */
            height: auto; /* Adjust height based on content */
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white */
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            overflow-y: auto;
            padding: 30px;
            margin-top: 20px; /* Space below the header */
        }

        h2 {
            color: #388e3c; /* Dark green for title */
            margin-bottom: 20px;
        }

        .table-container {
            display: flex;
            flex-wrap: nowrap;
            overflow-x: auto; /* Allow horizontal scrolling */
            width: 100%;
            justify-content: flex-start; /* Align content to the left */
            gap: 20px; /* Space between assignment cards */
        }

        .assignment-card {
            width: 200px; /* Fixed width for each card */
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 15px;
            text-align: center;
            transition: transform 0.3s ease;
            flex-shrink: 0; /* Prevent shrinking */
        }

        .assignment-card:hover {
            transform: scale(1.05); /* Slightly enlarge on hover */
        }

        .assignment-card a {
            display: block;
            text-decoration: none;
            color: #388e3c; /* Green for links */
            font-weight: bold;
            margin-bottom: 10px;
            font-size: 1.2rem;
        }

        .status {
            background-color: #388e3c; /* Green status indicator */
            color: white;
            padding: 8px;
            border-radius: 5px;
        }

        /* Button Styles */
        .button-container {
            position: fixed; /* Fix button to the screen */
            bottom: 20px; /* 20px from the bottom */
            left: 20px; /* 20px from the left */
            z-index: 10; /* Ensure it's above other content */
        }

        a {
            text-decoration: none;
            color: white;
            background-color: #4caf50; /* Green for button background */
            padding: 12px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #388e3c; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <header>
        <h1>View Assignment Status</h1>
    </header>
    <div class="dashboard-container">
        <h2>Assignment Status</h2>
        <div class="table-container">
            <!-- Assignment cards (horizontal layout) -->
            <div class="assignment-card">
                <a href="assignment1.jsp">Assignment 1</a>
                <div class="status">Completed</div>
            </div>
            <div class="assignment-card">
                <a href="assignment2.jsp">Assignment 2</a>
                <div class="status">Pending</div>
            </div>
            <div class="assignment-card">
                <a href="assignment3.jsp">Assignment 3</a>
                <div class="status">In Progress</div>
            </div>
            <div class="assignment-card">
                <a href="assignment4.jsp">Assignment 4</a>
                <div class="status">Completed</div>
            </div>
        </div>
    </div>
    <div class="button-container">
        <a href="student.jsp">Back to Dashboard</a> <!-- Link back to the dashboard -->
    </div>
</body>
</html>
