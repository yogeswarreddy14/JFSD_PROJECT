<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Dashboard</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
 
        body, html {
            height: 100%;
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
        }

        header {
            width: 100%;
            background: linear-gradient(to right, #2196F3, #4CAF50);
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 24px;
            font-weight: 600;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            z-index: 1000;
            position: relative;
        }

        header img {
            position: absolute;
            top: 20px;
            left: 20px;
            width: 80px;
            height: 80px;
            border-radius: 50%;
        }

        /* Sign Out link positioned at the bottom right corner */
        .signout-link {
            position: absolute;
            bottom: 20px;
            right: 20px;
            font-size: 16px;
            color: white;
            text-decoration: none;
            padding: 8px 15px;
            background-color: #f44336;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .signout-link:hover {
            background-color: #d32f2f;
        }

        nav {
            background: linear-gradient(to right, #2196F3, #4CAF50);
            padding: 20px;
            width: 250px;
            height: 100vh;
            box-shadow: 4px 0 10px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 80px;
            left: 0;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
        }

        nav a {
            color: white;
            text-decoration: none;
            padding: 16px 24px;
            margin: 8px 0;
            border-radius: 8px;
            font-size: 18px;
            transition: background-color 0.3s, transform 0.3s ease-in-out;
            width: 100%;
            text-align: center;
            border: 1px solid transparent;
        }

        nav a:hover {
            background-color: #388e3c;
            transform: scale(1.05);
            border-color: #ffffff;
        }

        nav a:active {
            transform: scale(0.98);
            background-color: #1b5e20;
        }

        main {
            display: flex;
            justify-content: center;
            align-items: center;
            flex: 1;
            padding: 30px;
            margin-left: 250px;
            height: 100vh;
            width: 100%;
        }

        .container {
            text-align: center;
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.8), rgba(240, 240, 240, 0.9));
            padding: 50px;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 900px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .container:hover {
            transform: scale(1.02);
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.2);
        }

        h2 {
            font-size: 28px;
            color: #1e88e5;
            margin-bottom: 30px;
            font-weight: 500;
        }

        p {
            color: #333;
            font-size: 18px;
            margin-bottom: 25px;
            line-height: 1.6;
        }

        @media (max-width: 768px) {
            header {
                font-size: 22px;
                padding: 15px;
            }

            nav {
                width: 100%;
                height: calc(100vh - 80px);
                position: relative;
                padding: 12px;
                margin-top: 80px;
            }

            nav a {
                margin: 8px 0;
                padding: 12px 18px;
                font-size: 16px;
            }

            main {
                margin-left: 0;
                padding: 15px;
            }

            h2 {
                font-size: 24px;
            }

            p {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

    <header>
        <h1>Teacher Dashboard</h1>
        <img src="https://e7.pngegg.com/pngimages/265/858/png-clipart-computer-icons-teacher-professor-education-lecturer-teacher-angle-logo-thumbnail.png" alt="Profile">
        <!-- Sign Out Link -->
        <a href="logout.jsp" class="signout-link">Sign Out</a>
    </header>

    <nav>
        <a href="CourseList.jsp">View Courses</a>
        <a href="gradeAssignment.jsp">Grade Assignment</a>
        <a href="editGrade.jsp">Edit Grade</a>
        <a href="pendingStudents.jsp">View Pending Students</a>
    </nav>

    <main>
        <div class="container">
            <h2>Welcome to the Teacher Dashboard</h2>
            <p>Select an option from the navigation menu to manage courses, grade assignments, and more.</p>
        </div>
    </main>

</body>
</html>
