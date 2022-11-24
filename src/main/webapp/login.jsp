<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<h1>Login Page</h1>
	<form action="AuthenticateServlet" method="post">
		<div class="container">
			Enter your Username: <input type="text" name="username" size="20">
			Enter your Password: <input type="password" name="password" size="20">
			<!-- Implement submit button with type = submit to perform the request when clicked -->
			<input type="submit" value="Login" />
		</div>
	</form>
</body>
</html>