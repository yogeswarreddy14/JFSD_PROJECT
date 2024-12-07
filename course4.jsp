<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MERN COURSE</title>
<style>
    /* General page styles */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        padding: 20px;
        padding-top: 80px; /* Prevent content from hiding behind header */
    }

    h1 {
        text-align: center;
        color: #388e3c;
        margin-bottom: 40px;
    }

    /* Header Styles */
    header {
        background-color: #388e3c; /* Dark green for header background */
        width: 100%;
        padding: 15px 0;
        position: fixed;
        top: 0;
        left: 0;
        z-index: 1000; /* Ensure header stays on top */
        text-align: center;
    }

    header h1 {
        color: white; /* White text for header */
        font-size: 1.8rem;
    }

    /* Vertical Assignment List */
    .assignment-container {
        display: flex;
        flex-direction: column; /* Arrange items vertically */
        align-items: center;
        margin-top: 100px; /* Adds space below header */
        gap: 20px; /* Spacing between items */
    }

    /* Button Styles */
    .assignment-link {
        width: 80%; /* Buttons take up 80% of the page width */
        max-width: 400px; /* Max width for larger screens */
        padding: 15px;
        font-size: 1.2rem;
        font-weight: bold;
        text-align: center;
        border-radius: 8px;
        text-decoration: none; /* Remove underline */
        color: white;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        display: inline-block;
    }

    /* Unique styles for each button */
    .btn1 {
        background-color: #4caf50; /* Green */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    .btn1:hover {
        background-color: #388e3c; /* Darker green */
        transform: translateY(-5px);
    }

    .btn2 {
        background: linear-gradient(45deg, #ff5722, #ff9800); /* Gradient orange */
        box-shadow: 0 4px 8px rgba(255, 87, 34, 0.5);
    }
    .btn2:hover {
        background: linear-gradient(45deg, #e64a19, #f57c00);
        transform: translateY(-5px);
    }

    .btn3 {
        background-color: #2196f3; /* Blue */
        border: 2px solid #1976d2;
        box-shadow: 0 4px 8px rgba(33, 150, 243, 0.5);
    }
    .btn3:hover {
        background-color: #1976d2;
        transform: scale(1.1);
    }

    .btn4 {
        background-color: #9c27b0; /* Purple */
        box-shadow: 0 4px 8px rgba(156, 39, 176, 0.5);
    }
    .btn4:hover {
        background-color: #7b1fa2;
        transform: translateX(10px); /* Slight horizontal movement */
    }
</style>
</head>
<body>

    <!-- Header -->
    <header>
        <h1>Assignments for MERN Course</h1>
    </header>

    <!-- Vertical Assignment Links -->
    <div class="assignment-container">
        <a href="assignment1.jsp" class="assignment-link btn1">Assignment 1</a>
        <a href="assignment2.jsp" class="assignment-link btn2">Assignment 2</a>
        <a href="assignment3.jsp" class="assignment-link btn3">Assignment 3</a>
        <a href="assignment4.jsp" class="assignment-link btn4">Assignment 4</a>
    </div>

</body>
</html>
