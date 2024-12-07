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
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #121212; /* Dark background for the body */
            color: #e0e0e0; /* Light text color for contrast */
        }

        .dashboard-container {
            display: flex;
            height: 100vh; /* Full screen height */
        }

        .navbar {
            background-color: #1e1e1e; /* Dark grey navbar background */
            width: 250px; /* Fixed width for the navbar */
            height: 100%; /* Full height for navbar */
            border-radius: 12px; /* Rounded corners for navbar */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Shadow for depth */
            padding: 30px 20px;
            color: #fff;
            display: flex;
            flex-direction: column; /* Vertical layout for navbar items */
            justify-content: space-between; /* Distribute items vertically */
        }

        .navbar h2 {
            font-size: 28px; /* Larger font size for the title */
            margin-bottom: 20px;
            text-align: center;
        }

        .navbar ul {
            list-style-type: none;
            padding: 0;
            margin-top: 20px;
            display: flex;
            flex-direction: column; /* Vertical layout */
            flex-grow: 1; /* Allow the list to grow */
        }

        .navbar li {
            margin: 15px 0; /* Spacing between each menu item */
            flex: 1; /* Ensures the li elements take up equal space */
        }

        .navbar a {
            text-decoration: none;
            color: #fff;
            background-color: #2979ff; /* Bright blue buttons */
            padding: 14px 20px; /* Adjusted padding for a more balanced look */
            border-radius: 8px;
            font-size: 18px; /* Larger font size for readability */
            transition: background-color 0.3s ease;
            display: block;
            width: 100%; /* Full width for each menu item */
            height: 100%; /* Makes the buttons fit the container height */
        }

        .navbar a:hover {
            background-color: #1976d2; /* Darker blue on hover */
        }

        .dashboard-content {
            flex: 1; /* Take up the remaining space */
            text-align: center; /* Center text and images */
            color: #e0e0e0; /* Light text color */
            padding: 20px;
            overflow-y: auto; /* Allows scrolling if content overflows */
            display: flex;
            flex-direction: column;
            align-items: center; /* Center content horizontally */
            justify-content: center; /* Center content vertically */
        }

        .dashboard-content h3 {
            font-size: 32px;
            margin-bottom: 20px;
        }

        .dashboard-content p {
            font-size: 20px;
            margin-bottom: 30px;
        }

        .dashboard-content img.profile {
            position: absolute; /* Positioning the image absolutely within its parent */
            top: 20px; /* Distance from the top of the container */
            right: 20px; /* Distance from the right side of the container */
            width: 150px;
            height: 150px;
            border-radius: 50%;
            border: 4px solid #2979ff; /* Blue border around profile image */
        }

        .dashboard-content img.center {
            width: 180px; /* Adjusted size for center image */
            height: 180px;
            border-radius: 10px;
            border: 4px solid #2979ff; /* Blue border around center image */
            margin-top: 40px; /* Space from the heading */
            margin-bottom: 40px; /* Space below the image */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar {
                width: 200px; /* Narrower navbar for smaller screens */
            }

            .navbar h2 {
                font-size: 24px; /* Smaller font size for smaller screens */
            }

            .navbar a {
                font-size: 16px; /* Smaller font size for menu items */
                padding: 12px 16px; /* Adjusted padding */
            }

            .dashboard-content h3 {
                font-size: 28px; /* Smaller font size for the heading */
            }

            .dashboard-content p {
                font-size: 18px; /* Smaller font size for the paragraph */
            }
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <nav class="navbar">
            <h2>Student Dashboard</h2>
            <ul>
                <li><a href="viewCourse.jsp">View Course</a></li>
                <li><a href="viewAssignmentStatus.jsp">View Assignment Status</a></li>
                
                <li><a href="viewGrades.jsp">View Grades</a></li>
                <li><a href="submitAssignment.jsp">Submit Assignment</a></li> <!-- New Submit Assignment Option -->
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </nav>
        <div class="dashboard-content">
            <!-- Profile Image (Top-right corner) -->
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUQhdJU1r0EVos4Edswt4noEikFgWJZAPXDw&s" alt="Profile Picture" class="profile">
            
            <h3>Welcome, Student!</h3>
            <p>Access your assignment statuses, grades, and submit assignments from the menu.</p>

            <!-- Center Image -->
        </div>
    </div>
</body>
</html>
