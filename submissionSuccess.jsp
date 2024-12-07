<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submission Successful</title>
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
            position: relative; /* Make the body the reference point for absolute positioning */
        }

        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100%;
            padding: 20px;
            text-align: center;
        }

        h2 {
            color: #388e3c; /* Dark green color for title */
            margin-bottom: 20px;
        }

        p {
            color: #388e3c; /* Dark green color for message */
            margin-bottom: 20px;
        }

        button {
            background-color: #388e3c; /* Dark green button */
            color: white; /* White text color */
            border: none; /* No border */
            padding: 10px 15px; /* Padding for button */
            border-radius: 5px; /* Rounded corners for button */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s ease; /* Smooth transition */
            position: absolute; /* Absolute positioning */
            bottom: 20px; /* Distance from the bottom */
            left: 20px; /* Distance from the left */
        }

        button:hover {
            background-color: #2e7d32; /* Darker green shade on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Submission Successful!</h2>
        <p>Your assignment has been successfully submitted.</p>
    </div>
    <form action="student.jsp" method="get">
        <button type="submit">Back to Dashboard</button>
    </form>
</body>
</html>
