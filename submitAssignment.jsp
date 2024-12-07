<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submit Assignment</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f8;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        header {
            background-color: #28a745;
            color: white;
            width: 100%;
            padding: 20px;
            text-align: center;
            border-radius: 8px 8px 0 0;
            margin-bottom: 20px;
        }

        h1 {
            font-size: 32px;
            font-weight: 600;
        }

        .container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            width: 100%;
            max-width: 400px;
            text-align: center;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            font-size: 26px;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-size: 16px;
        }

        input[type="file"] {
            width: 100%;
            padding: 12px;
            border: 2px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
            margin-bottom: 20px;
        }

        button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 14px;
            font-size: 18px;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <header>
        <h1>View Assignment Status</h1>
    </header>
    <div class="container">
        <h2>Upload Your Assignment</h2>
        <form action="submissionSuccess.jsp" method="post" enctype="multipart/form-data">
            <label for="assignmentFile">Choose PDF:</label>
            <input type="file" id="assignmentFile" name="assignmentFile" accept="application/pdf" required>
            <button type="submit">
                <i class="fa fa-upload"></i> Submit
            </button>
        </form>
    </div>
</body>
</html>
