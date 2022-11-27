<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forget Password</title>
</head>
<body>
	<div class="container" id="container">
		<div class="form-container sign-in-container">
			<form action="ForgetPasswordServlet" method="post">
				<h2>Type in your email for OTP</h2>
				<input type="email" name="email" placeholder="Email" size="20" />
				<button id="buttonLogin" type="submit" href="http://localhost:8091/Bookee/resetPassword.jsp">
					<a>Send OTP</a>
				</button>
			</form>
		</div>
</body>
</html>