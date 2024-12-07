<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Assignment</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #121212; /* Black background for the page */
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            background: linear-gradient(135deg, #3a3a3a, #1e88e5); /* Gradient background */
            border-radius: 30px; /* Large rounded corners */
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.3); /* Deep shadow for a soft floating effect */
            padding: 40px 30px;
            width: 100%;
            max-width: 500px;
            color: white;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #ffffff; /* White heading for contrast */
            font-size: 28px; /* Larger font size */
        }

        label {
            margin-bottom: 8px;
            font-size: 16px;
            color: #bbb; /* Lighter grey for labels */
            display: block;
        }

        input[type="text"],
        input[type="date"],
        input[type="file"],
        textarea {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px; /* Rounded input corners */
            font-size: 16px;
            transition: border-color 0.3s ease;
            background-color: #444; /* Dark grey background for inputs */
            color: white; /* White text in input fields */
        }

        input[type="text"]:focus,
        input[type="date"]:focus,
        input[type="file"]:focus,
        textarea:focus {
            border-color: #1e88e5; /* Focus blue border */
            outline: none;
            box-shadow: 0 0 5px rgba(30, 136, 229, 0.5); /* Subtle blue glow effect */
        }

        button {
            background-color: #1e88e5; /* Blue button */
            color: white;
            border: none;
            padding: 15px;
            border-radius: 50px; /* Rounded button */
            font-size: 18px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background-color: #1565c0; /* Darker blue on hover */
            transform: translateY(-3px); /* Slight lift on hover */
        }

        /* Style for the back to dashboard link */
        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #1e88e5; /* Consistent blue color */
            text-decoration: none;
            font-size: 16px;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add New Assignment</h2>
        <form action="saveAssignment.jsp" method="post" enctype="multipart/form-data">
            <label for="title">Assignment Title:</label>
            <input type="text" id="title" name="title" required>

            <label for="description">Assignment Description:</label>
            <textarea id="description" name="description" rows="4" required></textarea>

            <label for="file">Upload File:</label>
            <input type="file" id="file" name="file" accept=".pdf,.doc,.docx,.txt,.jpg,.png" required>

            <button type="submit">Add Assignment</button>
        </form>

        <!-- Back to Admin Dashboard Link -->
        <a href="admin.jsp" class="back-link">Back to Admin Dashboard</a>
    </div>
</body>
</html>
