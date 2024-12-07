<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Grade</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #263238; /* Blue background color */
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #546e7a; /* Slightly different blue for header */
            color: white;
            text-align: center;
            padding: 2px;
            font-size: 28px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            border-bottom: 4px solid #0d47a1;
        }

        main {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 80px);
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


        label {
            display: block;
            margin-bottom: 8px;
            color: #1976d2;
            font-weight: 600;
        }

        input, select {
            width: 100%;
            padding: 14px;
            margin-bottom: 20px;
            border: 1px solid #90caf9;
            border-radius: 8px;
            font-size: 16px;
            background-color: #f1f8e9;
            color: #0d47a1;
            transition: border-color 0.3s ease;
        }

        input:focus, select:focus {
            border-color: #1976d2;
        }

        button {
            position: absolute;
            bottom: 20px;
            left: 20px;
            background-color: #1976d2;
            color: white;
            padding: 14px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #1565c0;
        }

        .dashboard-button {
            background-color: #05eb42; 
        }

        .dashboard-button:hover {
            background-color: #0277bd;
        }

        a {
            text-decoration: none;
        }

        @media (max-width: 768px) {
            header {
                font-size: 24px;
            }

            form {
                padding: 20px;
            }

            input, select {
                font-size: 14px;
            }

            button {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

    <header>
        <h1>Edit Grade</h1>
    </header>

    <main>
        <form action="updateGrade.jsp" method="POST">
            <label for="student">Select Course</label>
            <select name="student" id="student" required onchange="fetchCurrentGrade()">
                <option value="">Choose a Course</option>
                <option value="student_id_1">DBMS</option>
                <option value="student_id_2">JFSD</option>
                <option value="student_id_3">PFSD</option>
            </select>

            <label for="assignment">Select Assignment</label>
            <select name="assignment" id="assignment" required onchange="fetchCurrentGrade()">
                <option value="">Choose an assignment</option>
                <option value="assignment1">Assignment 1</option>
                <option value="assignment2">Assignment 2</option>
                <option value="assignment3">Assignment 3</option>
            </select>

            <label for="newGrade">New Grade</label>
            <input type="text" name="newGrade" id="newGrade" placeholder="New Grade (e.g. A, B, 85%)" required>

            <button type="submit">Update Grade</button>
        </form>

        <a href="teacher.jsp">
            <button class="dashboard-button">Go to Dashboard</button>
        </a>
    </main>

</body>
</html>
