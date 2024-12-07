<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grade Assignment</title>
    <style>
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

        main {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
            flex-direction: column;
        }

        form {
            background-color: #37474f; /* Dark grey-blue form */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5); /* Stronger shadow for depth */
            width: 400px;
            text-align: center;
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #90a4ae; /* Lighter grey-blue border */
            border-radius: 8px;
            background-color: #546e7a; /* Match form's background */
            color: white;
            font-size: 16px;
        }

        input::placeholder {
            color: #b0bec5; /* Placeholder text color */
        }

        button {
            width: 100%;
            background-color: #ffb300; /* Bright yellow-orange button */
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #ffa000; /* Slightly darker yellow-orange on hover */
        }

        .dashboard-button {
            background-color: #42a5f5; /* Cool light blue button */
            margin-top: 20px;
        }

        .dashboard-button:hover {
            background-color: #1e88e5; /* Darker blue on hover */
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #e0e0e0; /* Softer white label */
            font-size: 16px;
        }

        a {
            text-decoration: none; /* Remove underline */
        }
    </style>
</head>
<body>

    <header>
        <h1>Grade Assignment</h1>
    </header>

    <main>
        <form action="submitGrade.jsp" method="POST">
            <label for="student">Select Course</label>
            <select name="student" id="student" required>
                <option value="">Choose a Course</option>
                <option value="student_id_1">DBMS</option>
                <option value="student_id_2">JFSD</option>
                <option value="student_id_3">PFSD</option>
                <!-- Add more students dynamically based on your database -->
            </select>

            <label for="assignment">Select Assignment</label>
            <select name="assignment" id="assignment" required>
                <option value="">Choose an assignment</option>
                <option value="assignment1">Assignment 1</option>
                <option value="assignment2">Assignment 2</option>
                <option value="assignment3">Assignment 3</option>
                <!-- Add more assignments dynamically based on your database -->
            </select>

            <label for="grade">Enter Grade</label>
            <input type="text" name="grade" id="grade" placeholder="Grade (e.g. A, B, 85%)" required>

            <button type="submit">Submit Grade</button>
        </form>

        <a href="teacher.jsp">
            <button class="dashboard-button">Go to Dashboard</button>
        </a>
    </main>

</body>
</html>
