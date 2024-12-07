<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e8f5e9; /* Light green background */
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #388e3c; /* Dark green header */
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 28px;
            font-weight: bold;
            width: 100%;
        }

        nav {
            display: flex;
            justify-content: center; /* Center the list horizontally */
            margin-top: 30px;
        }

        ul {
            list-style-type: none;
            padding: 0;
            text-align: center; /* Center the list items */
        }

        li {
            margin: 20px 0; /* Add space between buttons */
        }

        /* Button styles for each course */
        a {
            text-decoration: none;
            color: white;
            font-size: 20px;
            font-weight: bold;
            padding: 15px 30px;
            display: inline-block;
            border-radius: 8px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        /* Unique button styles */
        .btn1 {
            background-color: #388e3c; /* Dark green */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .btn1:hover {
            background-color: #1b5e20; /* Darker green */
            transform: scale(1.1);
        }

        .btn2 {
            background: linear-gradient(45deg, #ff6f61, #ffab40); /* Gradient orange */
            box-shadow: 0 6px 10px rgba(255, 107, 87, 0.5);
        }
        .btn2:hover {
            background: linear-gradient(45deg, #ff3d00, #ff6f61);
            transform: translateY(-5px);
        }

        .btn3 {
            background-color: #2962ff; /* Blue */
            border: 2px solid #1e88e5;
            box-shadow: inset 0 0 5px rgba(255, 255, 255, 0.3);
        }
        .btn3:hover {
            background-color: #1e88e5;
            border-color: #1565c0;
            transform: rotate(3deg);
        }

        .btn4 {
            background-color: #8e24aa; /* Purple */
            color: white;
            border: 3px dotted white;
        }
        .btn4:hover {
            background-color: #6a1b9a;
            transform: scale(1.2);
            box-shadow: 0 0 15px rgba(142, 36, 170, 0.7);
        }
    </style>
</head>
<body>

    <header>
        List Of Courses
    </header>

    <nav>
        <ul>
            <li><a href="course1.jsp" class="btn1">Course 1: JFSD</a></li>
            <li><a href="course2.jsp" class="btn2">Course 2: PFSD</a></li>
            <li><a href="course3.jsp" class="btn3">Course 3: DBMS</a></li>
            <li><a href="course4.jsp" class="btn4">Course 4: MERN</a></li>
        </ul>
    </nav>

</body>
</html>
