<%@ page import="jakarta.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .user-nav {
            background-color: #444;
            color: white;
            padding: 10px 0;
            text-align: right;
            font-size: 14px;
        }

        .user-nav a {
            color: white;
            text-decoration: none;
            margin-right: 20px;
        }

        .dashboard-container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .user-info {
            text-align: right;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Welcome to Your Dashboard</h1>
    </div>
    <div class="user-nav">
        <div class="user-info">
            <span><%= request.getSession().getAttribute("userId")%></span>
        </div>
        <a href="LogoutServlet">Logout</a>
    </div>
    <div class="dashboard-container">
        <!-- Your dashboard content here -->
    </div>
</body>
</html>
