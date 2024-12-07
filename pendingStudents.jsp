<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pending Students</title>
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

        header h1 {
            font-size: 36px; /* Larger text for the header */
            margin: 0;
        }

        main {
            width: 80%; /* Limit the width of the content */
            max-width: 1000px; /* Maximum width for better responsiveness */
            text-align: center; /* Center the main content */
            margin-top: 40px; /* Space from header */
            margin-bottom: 50px;
        }

        a.back-button {
            background-color: #4caf50; /* Green button color */
            color: white;
            padding: 12px 18px;
            text-decoration: none;
            border-radius: 8px;
            position: absolute;
            bottom: 20px; /* Position at the bottom */
            left: 20px; /* Position to the left */
            transition: background-color 0.3s ease;
        }

        a.back-button:hover {
            background-color: #388e3c; /* Darker green on hover */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #ffffff; /* White table background */
            border-radius: 10px; /* Rounded corners for table */
            overflow: hidden;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        }

        th, td {
            border: 1px solid #81c784; /* Light green border */
            padding: 12px;
            text-align: center;
            color: #388e3c; /* Dark green text color */
            cursor: pointer; /* Make the cells look clickable */
        }

        th {
            background-color: #4caf50; /* Green background for header */
            color: white;
        }

        tr:nth-child(even) {
            background-color: #c8e6c9; /* Light green background for even rows */
        }

        tr:hover {
            background-color: #a5d6a7; /* Lighter green on hover */
        }

        @media (max-width: 768px) {
            header h1 {
                font-size: 28px; /* Smaller font for header on smaller screens */
            }

            table {
                width: 90%; /* Adjust table width for smaller screens */
            }

            a.back-button {
                padding: 10px 15px; /* Adjust button size for smaller screens */
            }
        }
    </style>
</head>
<body>

    <header>
        <h1>Pending Students</h1>
    </header>

    <main>
        <table>
            <thead>
                <tr>
                    <th>Student ID</th>
                    <th>Name</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr onclick="window.location.href='student_details.jsp?id=STU001'">
                    <td>STU001</td>
                    <td>Student 1</td>
                    <td>Pending</td>
                </tr>
                <tr onclick="window.location.href='student_details.jsp?id=STU002'">
                    <td>STU002</td>
                    <td>Student 2</td>
                    <td>Pending</td>
                </tr>
            </tbody>
        </table>
    </main>

    <a href="teacher.jsp" class="back-button">Back to Dashboard</a> <!-- Link to Teacher Dashboard -->

</body>
</html>
