<!DOCTYPE html>
<html>
<head>
    <title>Failure</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .message-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        .failure-message {
            color: #f44336;
            font-size: 24px;
            margin-bottom: 10px;
        }

        .back-button {
            background-color: #f44336;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .back-button:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
    <div class="message-container">
        <div class="failure-message">
            Failure!
        </div>
        <p>Sorry, an error occurred during your request.</p>
        <br>
        <h1 style="color:red"><%= request.getAttribute("error") %></h1>
        <a href="index.jsp" class="back-button">Back to Home</a>
    </div>
</body>
</html>
