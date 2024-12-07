<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Courses</title>
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
            justify-content: center; /* Center the content vertically */
            align-items: center; /* Center the content horizontally */
            padding: 10px;
        }

        /* Header Styles */
        header {
            background-color: #388e3c; /* Dark green for header background */
            width: 100%;
            padding: 20px 0;
            text-align: center;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000; /* Ensure the header stays on top */
        }

        header h1 {
            color: white; /* White text for the header */
            font-size: 2rem;
        }

        /* Main container for dashboard */
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
            margin-top: 80px; /* Space below the fixed header */
        }

        h2 {
            color: #388e3c; /* Dark green for title */
            margin-bottom: 20px;
        }

        /* Separate container for course cards */
        .courses-container {
            display: flex;
            flex-wrap: wrap; /* Wrap cards onto new lines if necessary */
            gap: 20px; /* Space between course cards */
            justify-content: center; /* Center the course cards */
        }

        /* Each course card styles */
        .course-card {
            width: 250px; /* Fixed width for each card */
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease;
        }

        .course-card:hover {
            transform: scale(1.05); /* Slightly enlarge on hover */
        }

        .course-card a {
            display: block;
            text-decoration: none;
            color: #388e3c; /* Green for links */
            font-weight: bold;
            margin-bottom: 15px;
            font-size: 1.2rem;
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
        <h1>View Courses</h1>
    </header>

    <div class="dashboard-container">
        <h2>Courses</h2>
        <!-- Separate container for courses -->
        <div class="courses-container">
            <!-- Course cards (flex layout) -->
            <div class="course-card">
                <a href="course1.jsp">JFSD</a> <!-- Link to Course 1 page -->
            </div>
            <div class="course-card">
                <a href="course2.jsp">PFSD</a> <!-- Link to Course 2 page -->
            </div>
            <div class="course-card">
                <a href="course3.jsp">DBMS</a> <!-- Link to Course 3 page -->
            </div>
            <div class="course-card">
                <a href="course4.jsp">MERN</a> <!-- Link to Course 4 page -->
            </div>
        </div>
    </div>

    <div class="button-container">
        <a href="student.jsp">Back to Dashboard</a> <!-- Link back to the dashboard -->
    </div>
</body>
</html>
