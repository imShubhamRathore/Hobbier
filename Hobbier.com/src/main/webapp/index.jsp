<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>
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

.button-container {
	text-align: center;
	margin-top: 50px;
}

.button {
	display: inline-block;
	margin: 10px;
	padding: 10px 20px;
	background-color: #4caf50;
	color: white;
	text-decoration: none;
	border: none;
	border-radius: 3px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.button:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<div class="header">
		<h1>Welcome To Hobbier</h1>
	</div>
	<div class="button-container">
		<a href="register.jsp" class="button">Register</a> <a href="login.jsp"
			class="button">Login</a>
	</div>
</body>
</html>
