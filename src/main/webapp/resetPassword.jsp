<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="form-container sign-in-container">
		<form action="ResetPasswordServlet" method="post">
			<h1>An email token has been sent! Check your email!</h1>
			<input type="text" name="token" placeholder="Token" size="20" />
			<input type="password" name="newPassword" placeholder="New Password" size="20" />
			<button id="buttonLogin" type="submit">
				<a>Change Password</a>
			</button>
		</form>
</body>
</html>