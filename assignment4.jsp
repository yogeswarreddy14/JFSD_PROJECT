<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Assignment - 4</title>
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
        padding-top: 60px; /* Add padding to avoid the header covering the content */
        height: 100vh; /* Make sure the body takes full height of the screen */
        display: flex;
        justify-content: center; /* Center content horizontally */
        align-items: center; /* Center content vertically */
        position: relative;
    }

    /* Header Styles */
    header {
        background-color: #388e3c; /* Green background */
        color: white;
        width: 100%;
        padding: 15px 0;
        position: fixed;
        top: 0;
        left: 0;
        z-index: 1000; /* Ensures the header stays on top */
        text-align: center;
    }

    header h1 {
        font-size: 2rem;
    }

    /* Image Styles */
    .center-image {
        width: 100%; /* Make image responsive */
        height: auto;
        max-width: 800px; /* Maximum width of the image */
        border-radius: 10px; /* Optional, to add rounded corners to the image */
    }
</style>
</head>
<body>

    <!-- Header -->
    <header>
        <h1>Assignment - 4</h1>
    </header>

    <!-- Image Centered in the Page -->
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6V9ad5wPjBGcj2v1sbYDgOLDR1EyHHENbDqs_LXWRq-rsSjAoxaESZ_0bD6F95H__wmA&usqp=CAU" alt="Assignment Image" class="center-image"> <!-- Replace with your image path -->

</body>
</html>
