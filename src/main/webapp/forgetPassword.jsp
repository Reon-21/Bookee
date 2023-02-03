<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="images/favicon.ico" sizes="32x32">
<title>Forget Password</title>
<style>
body {
	background: #f6f5f7;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	font-family: 'Montserrat', sans-serif;
	height: 100vh;
	margin: -20px 0 50px;
}

p {
	margin: 25 px 0 50px;
	text-align: center;
}

input {
	background-color: #eee;
	border: none;
	padding: 12px 10px;
	margin: 8px 0;
	width: 90%;
}

form {
	text-align: center;
}

#buttonReset {
	background: linear-gradient(to right, #FF4B2B, #FF416C) !important;
	color: white !important;
	box-shadow: none !important;
	border-radius: 20px;
	border: 2px solid #FFFFFF;
	background: white;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
	width: 90%;
	margin-top:20px;
}

#buttonReset:active {
	transform: scale(0.95);
}

#buttonReset:focus {
	outline: none;
}

#buttonReset.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
}

#form-container.sign-in-container {
	align-items: center;
	justify-content: center;
}
</style>
</head>
<body>
	<div class="container" id="container">
		<div class="form-container sign-in-container">
			<form action="ForgetPasswordServlet" method="post">
				<img src="https://cdn-icons-png.flaticon.com/512/5020/5020867.png"
					width="230" height="230">
				<h1>Forgot password?</h1>
				<p>You can reset password here.</p>
				<input type="email" name="email" placeholder="Email" size="20" /><br>
				<button class="ghost" id="buttonReset" type="submit"
					href="http://localhost:8091/DevOps-Project/resetPassword.jsp">
					<a>Send OTP</a>
				</button>
			</form>
		</div>
</body>
</html>