<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Pending Students</title>
    <style>
        /* Global Styles */
       body {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    background-color: #303030; /* Dark background for the page */
    display: flex;
    justify-content: center; /* Centers horizontally */
    align-items: center; /* Centers vertically */
    height: 100vh; /* Full viewport height */
    margin: 0; /* Removes default margin */
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

        h1 {
            color: #1976d2; /* Blue color for the header */
            margin-bottom: 20px;
            font-size: 28px; /* Larger font for the heading */
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #fcfcfc;
            font-size: 16px; /* Slightly larger font for labels */
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px; /* Rounded input corners */
            font-size: 18px;
            background-color: #f7f7f7; /* Light background for inputs */
            color: #333;
        }

        input[type="submit"] {
            background-color: #1976d2; /* Blue button color */
            color: white;
            border: none;
            padding: 15px;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #1565c0; /* Darker blue on hover */
        }

        a {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #1976d2;
            font-size: 16px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Pending Students</h1>
        <form action="processAddPendingStudent.jsp" method="post">
            <label for="studentId">Student ID:</label>
            <input type="text" id="studentId" name="studentId" required>

            <label for="studentName">Student Name:</label>
            <input type="text" id="studentName" name="studentName" required>

            <input type="submit" value="Add Student">
        </form>
        <a href="admin.jsp">Back to Admin Dashboard</a>
    </div>
</body>
</html>
