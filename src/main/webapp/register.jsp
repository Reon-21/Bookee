<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Bookee</title>
<style>
* {
	box-sizing: border-box;
}

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

h1 {
	font-weight: bold;
	margin: 20px;
}

h2 {
	text-align: center;
}

p {
	font-size: 14px;
	font-weight: 100;
	line-height: 20px;
	letter-spacing: 0.5px;
	margin: 20px 0 30px;
}

span {
	font-size: 12px;
}

a {
	color: rgb(210, 95, 220);
	font-size: 11px;
	text-decoration: none;
	margin-top: 10px;
	margin-bottom: 20px;
}

#registerButton {
	background: linear-gradient(to right, #FF4B2B, #FF416C)!important;
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
    margin-top: 20px;
}

#registerButton:active {
	transform: scale(0.95);
}

#registerButton:focus {
	outline: none;
}

#registerButton.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
}

#buttonLogin {
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
}

#buttonLogin:active {
	transform: scale(0.95);
}

#buttonLogin:focus {
	outline: none;
}

#buttonLogin.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
}

form {
	background-color: #FFFFFF;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 50px;
	height: 100%;
	text-align: center;
}

input {
	background-color: #eee;
	border: none;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
}

.container {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px,
		rgba(0, 0, 0, 0.22);
	position: relative;
	overflow: hidden;
	width: 768px;
	max-width: 100%;
	min-height: 600px;
}

.form-container {
	position: absolute;
	top: 0;
	height: 100%;
	transition: all 0.6s ease-in-out;
}

.sign-in-container {
	left: 0;
	width: 50%;
	z-index: 2;
}

.container.right-panel-active .sign-in-container {
	transform: translateX(100%);
}

.container.right-panel-active .sign-up-container {
	transform: translateX(100%);
}

@
keyframes show { 0%, 49.99% {
	opacity: 0;
	z-index: 1;
}

50




%
,
100




%
{
opacity




:




1


;
z-index




:




5


;
}
}
.overlay-container {
	position: absolute;
	top: 0;
	left: 50%;
	width: 50%;
	height: 100%;
	overflow: hidden;
	transition: transform 0.6s ease-in-out;
	z-index: 100;
}

.container.right-panel-active .overlay-container {
	transform: translateX(-100%);
}

.overlay {
	background: #FF416C;
	background: -webkit-linear-gradient(to right, #FF4B2B, #FF416C);
	background: linear-gradient(to right, #FF4B2B, #FF416C);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 0 0;
	color: #FFFFFF;
	position: relative;
	left: -100%;
	height: 100%;
	width: 200%;
	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.overlay-panel {
	position: absolute;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 40px;
	text-align: center;
	top: 0;
	height: 100%;
	width: 50%;
	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.overlay-left {
	transform: translateX(-20%);
}

.container.right-panel-active .overlay-left {
	transform: translateX(0);
}

.overlay-right {
	right: 0;
	transform: translateX(0);
}

.container.right-panel-active .overlay-right {
	transform: translateX(20%);
}

.social-container {
	margin: 20px 0;
}

.social-container a {
	border: 1px solid #DDDDDD;
	border-radius: 50%;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin: 0 5px;
	height: 40px;
	width: 40px;
}

footer {
	background-color: #222;
	color: #fff;
	font-size: 14px;
	bottom: 0;
	position: fixed;
	left: 0;
	right: 0;
	text-align: center;
	z-index: 999;
}

footer p {
	margin: 10px 0;
}

footer i {
	color: red;
}

footer a {
	color: #3c97bf;
	text-decoration: none;
}

.errors {
	color: red;
}
background




:


 


#FF416C




;
background




:


 


-webk




...
by


 


CHEW


 


ZHENG


 


HUI






CHEW


 


ZHENG


 


HUI2




:




45


 


pm






background




:


 


#FF416C




;
background




:


 


-webkit-linear-gradient




(




to


 


right
,
#FF4B2B
,
#FF416C




)




;
background




:


 


linear-gradient




(




to


 


right
,
#FF4B2B
,
#FF416C




)




;
has


 


context


 


menu
</style>
</head>

<body>
	<div class="container" id="container">
		<div class="form-container sign-in-container">
			<form action="RegisterServlet" method="post">
				<h1>Sign up</h1>
				<input type="email" name="email" placeholder="Email" size="20">
				<input type="text" name="username" placeholder="Username" size="20" />
				<input type="password" name="password" placeholder="Password"
					size="20" />
				<input type="text" name="role" placeholder="Customer/Hotel Owner" size="20">
		<button id="registerButton" type="submit">Sign Up</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Hello, Welcome to Bookee!</h1>
				<p>Already have an account?</p>
				<a href="http://localhost:8091/Bookee/login.jsp">
				<button class="ghost" id="buttonLogin">Sign in</button>
				</a>
			</div>
		</div>
	</div>
	</div>



</body>
</html>