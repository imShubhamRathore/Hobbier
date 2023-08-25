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
            max-width: 1200px;
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

        .section-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 30px;
        }
		.section {
            flex-basis: 48%;
            display: flex;
            flex-direction: column;
            align-items: center; /* Center items horizontally */
            cursor: pointer;
            padding: 10px 0;
        }

        .section-header {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .section-content {
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .selected {
            background-color: #e0e0e0;
        }
        .content-area {
            margin-top: 20px;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
    </style>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    
    
    <script>
        $(document).ready(function () {
            $(".section-clickable-SearchGroup").click(function () {
                
                
                $.ajax({
                    type: "GET",
                    url: "/Hobbier.com/SearchGroupServlet", // Replace with your servlet URL
                    //data: { section: sectionName },
                    success: function (response) {
                    	console.log("From Search",response);
                        $(".content-area").html(response);
                    },
                    error: function () {
                        console.error("Error fetching content.");
                    }
                });
            });
        });
    </script>
    
    <script>
        $(document).ready(function () {
            $(".section-clickable-ShowGroup").click(function () {
                
                
                $.ajax({
                    type: "GET",
                    url: "/Hobbier.com/ShowGroupServlet", // Replace with your servlet URL
                    //data: { section: sectionName },
                    success: function (response) {
                    	
                    	<%! String s = response;%>
                    	console.log("From show",response);
                        $(".content-area").html(response);
                    },
                    error: function () {
                        console.error("Error fetching content.");
                    }
                });
            });
        });
    </script>
    
</head>
<body>
    <div class="header">
        <h1>Welcome to Hobbier</h1>
    </div>
    <div class="user-nav">
        <div class="user-info">
            <span><%= request.getSession().getAttribute("userId")%></span>
        </div>
        <a href="LogoutServlet">Logout</a>
    </div>
    <div class="dashboard-container">
        <div class="section-container">
            <div class="section selected section-clickable-ShowGroup">
                <div class="section-header">See Your Groups</div>
                
            </div>
            <div class="section section-clickable-SearchGroup">
                <div class="section-header">Search Groups</div>
                
            </div>
        </div>
     <div class="content-area">
        <p>  </p>
    </div>
    </div>
</body>
</html>
