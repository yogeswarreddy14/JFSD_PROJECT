<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Deadline</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background-color: #303030; /* Dark background for the page */
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
            font-size: 28px;
            font-weight: bold;
            color: #333; /* Dark heading color */
        }

        label {
            margin-bottom: 10px;
            font-size: 16px;
            color: #555; /* Lighter grey for labels */
            display: inline-block;
        }

        .form-row {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 20px;
        }

        .form-card {
            background-color: #e0e0e0; /* Light grey background for cards */
            border-radius: 12px; /* Rounded card corners */
            padding: 20px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1); /* Light shadow */
            margin-bottom: 20px;
        }

        .form-row input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc; /* Light grey border */
            border-radius: 10px; /* Rounded input corners */
            font-size: 16px;
            transition: border-color 0.3s ease;
            background-color: #fff; /* White background for inputs */
            color: #333; /* Dark text inside inputs */
        }

        .form-row input:focus {
            border-color: #1e88e5; /* Blue focus border */
            outline: none;
            box-shadow: 0 0 5px rgba(30, 136, 229, 0.5); /* Subtle blue glow effect */
        }

        button {
            background-color: #1e88e5; /* Blue button */
            color: white;
            border: none;
            padding: 15px;
            border-radius: 50px;
            font-size: 18px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background-color: #1565c0;
            transform: translateY(-3px);
        }

        .message {
            color: green;
            text-align: center;
            margin-top: 10px;
        }

        .error {
            color: red;
            text-align: center;
            margin-top: 10px;
        }

        /* Back to Admin Dashboard Link */
        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #1e88e5;
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
        <h2>Add Assignment Deadline</h2>
        <form action="saveDeadline.jsp" method="post">
            <div class="form-card">
                <div class="form-row">
                    <div>
                        <label for="assignmentId">Assignment ID:</label>
                        <input type="text" id="assignmentId" name="assignmentId" required placeholder="Enter Assignment ID">
                    </div>
                    <div>
                        <label for="deadline">Deadline:</label>
                        <input type="date" id="deadline" name="deadline" required>
                    </div>
                </div>
            </div>

            <div class="form-card">
                <div class="form-row">
                    <div>
                        <label for="time">Time (Optional):</label>
                        <input type="time" id="time" name="time" placeholder="Optional">
                    </div>
                </div>
            </div>

            <button type="submit">Set Deadline</button>
        </form>

        <!-- Display success or error messages -->
        <% if (request.getParameter("message") != null) { %>
            <div class="message"><%= request.getParameter("message") %></div>
        <% } %>
        <% if (request.getParameter("error") != null) { %>
            <div class="error"><%= request.getParameter("error") %></div>
        <% } %>

        <!-- Back to Admin Dashboard Link -->
        <a href="admin.jsp" class="back-link">Back to Admin Dashboard</a>
    </div>
</body>
</html>
