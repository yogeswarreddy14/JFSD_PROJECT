<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Assignments with Images</title>
<style>
    /* General page styles */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    

    h1 {
        text-align: center;
        color: #388e3c;
        margin-bottom: 40px;
    }

    /* Header Styles */
     body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #263238; /* Blue background color */
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        header {
            background-color: #546e7a; /* Slightly different blue for header */
            color: white;
            text-align: center;
            padding: 20px 0;
            font-size: 28px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            border-bottom: 4px solid #0d47a1;
        }
    header h1 {
        color: white; /* White text for header */
        font-size: 1.8rem;
    }

    /* Assignment Container */
    .assignment-container {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: center; /* Centers the items horizontally */
        margin-top: 100px; /* Adds space below header */
        padding: 10px; /* Padding inside container */
    }

    /* Assignment Card Styles */
    .assignment-card {
        background-color: #ffffff;
        width: 250px; /* Fixed width for each assignment card */
        padding: 20px;
        text-align: center;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        align-items: center;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .assignment-card h3 {
        color: #388e3c;
        font-size: 1.2rem;
        margin-bottom: 20px;
    }

    /* Image Styling */
    .assignment-card img {
        width: 100%;
        height: 150px; /* Adjust the height to fit the image */
        object-fit: cover; /* Ensures the image fits the box without distortion */
        border-radius: 8px;
        margin-bottom: 15px; /* Adds space between the image and the text */
    }

    .view-button {
        background-color: #4caf50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
        text-decoration: none; /* Remove underline from the link */
    }

    .view-button:hover {
        background-color: #388e3c;
    }

    /* Hover effect for assignment cards */
    .assignment-card:hover {
        transform: translateY(-10px); /* Slightly lift the card on hover */
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Increase shadow on hover */
    }

    /* Responsive Design: Stack cards vertically on small screens */
    @media (max-width: 768px) {
        .assignment-container {
            flex-direction: column;
            align-items: center;
        }

        .assignment-card {
            width: 90%; /* Make cards take 90% of the screen width */
        }
    }
</style>
</head>
<body>

    <!-- Header -->
    <header>
        <h1>Submitted Assignments</h1>
    </header>

    <!-- Assignment Container -->
    <div class="assignment-container">

        <!-- Assignment 1 -->
        <div class="assignment-card">
            <img src="data:image/png;base64,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" alt="Assignment 1 Image"> <!-- Replace with actual image URL -->
            <h3>Assignment 1</h3>
            <a href="assignment1.jsp" class="view-button">View</a>
        </div>

        <!-- Assignment 2 -->
        <div class="assignment-card">
            <img src="data:image/png;base64,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" alt="Assignment 2 Image"> <!-- Replace with actual image URL -->
            <h3>Assignment 2</h3>
            <a href="assignment2.jsp" class="view-button">View</a>
        </div>

        <!-- Assignment 3 -->
        <div class="assignment-card">
            <img src="data:image/png;base64,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" alt="Assignment 3 Image"> <!-- Replace with actual image URL -->
            <h3>Assignment 3</h3>
            <a href="assignment3.jsp" class="view-button">View</a>
        </div>

        <!-- Assignment 4 -->
        <div class="assignment-card">
            <img src="data:image/png;base64,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" alt="Assignment 4 Image"> <!-- Replace with actual image URL -->
            <h3>Assignment 4</h3>
            <a href="assignment4.jsp" class="view-button">View</a>
        </div>

    </div>

</body>
</html>
