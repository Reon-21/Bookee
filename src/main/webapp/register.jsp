<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1 style="color: lightsalmon">Registration Form</h1>
		<form action="RegisterServlet" method="post">
			<table style="with: 70%">
				<tr>
					<td>Role:</td>
					<td><input type="radio" name="role" value="CUSTOMER" /><label
						for="customer">Customer</label></td>
					<td><input type="radio" name="role" value="OWNER" /><label
						for="owner">Owner</label></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="email" name="email" /></td>
				</tr>
				<tr>
					<td>Username:</td>
					<td><input type="text" name="username" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="text" name="password" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><input type="text" name="address" /></td>
				</tr>
				<tr>
					<td>Contect No:</td>
					<td><input type="text" name="number" /></td>
				</tr>
			</table>
			<input type="submit" value="Submit"/>
		</form>

	</div>
</body>
</html>