<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>User Profile</title>
<style>
body {
	background-color: #e2e8f0;
}

.main-body {
	padding: 15px;
}

.card {
	box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0
		rgba(0, 0, 0, .06);
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 0 solid rgba(0, 0, 0, .125);
	border-radius: .25rem;
}

.card-body {
	flex: 1 1 auto;
	padding: 1rem;
	height: 375px;
}

.gutters-sm {
	margin-right: -8px;
	margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
	padding-right: 8px;
	padding-left: 8px;
}

.mb-3, .my-3 {
	margin-bottom: 1rem !important;
}

.bg-gray-300 {
	background-color: #e2e8f0;
}


.profile-button:active {
   transform: scale(0.95);
}


.profile-button:focus {
	outline: none;
}

.profile-button.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
}

.edit-button{
   	background: linear-gradient(to right, #FF4B2B, #FF416C)!important;
    color: white !important;
    box-shadow: none !important;
	border-radius: 20px;
	border: 2px solid #FFFFFF;
  	background: white;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 5px 15px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
}

.edit-button:active {
   transform: scale(0.95);
}


.edit-button:focus {
	outline: none;
}

.edit-button.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
}

.delete-button{
   	background: linear-gradient(to right, #FF4B2B, #FF416C)!important;
    color: white !important;
    box-shadow: none !important;
	border-radius: 20px;
	border: 2px solid #FFFFFF;
  	background: white;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 5px 15px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
}

.delete-button:active {
   transform: scale(0.95);
}


.delete-button:focus {
	outline: none;
}

.delete-button.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
}

.rounded-circle{
	width: 30px;
	height: 30px;
}

img{
border-radius: 50%;
}





</style>
</head>
<body>
<nav class="navbar navbar-light navbar-expand-md bg-light justify-content-center">
  <a routerLink="/" class="navbar-brand d-flex w-50 mr-auto"><img src="assets/images/exdanote_logo.png" alt="Exdanote Logo" style="max-width: 100%; width: 160px;"></a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbar3">
      <span class="navbar-toggler-icon"></span>
  </button>
      <ul class="navbar-nav w-100 justify-content-center">
          <li class="nav-item">
              <a class="nav-link">Hotels</a>
          </li>
          <li class="nav-item">
              <a class="nav-link">Dashboard</a>
          </li>
      </ul>
      <ul class="nav navbar-nav ml-auto w-100 justify-content-end">
       <ul class="navbar-nav">
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/fox.jpg" class="rounded-circle">
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="http://localhost:8091/Bookee/UserProfile.jsp">Edit Profile</a>
          <a class="dropdown-item" href="http://localhost:8091/Bookee/index.jsp">Log Out</a>
        </div>
      </li>   
    </ul>
  </div>
          <li class="nav-item">
          	<a href="http://localhost:8091/Bookee/login.jsp">
            <button type="button" class="btn btn-outline-dark" style="margin-right: 10px;" routerLink="/login">Login</button>
             </a>
          </li>
          <li class="nav-item">
          		<a href="http://localhost:8091/Bookee/register.jsp">
            <button type="button" class="btn btn-dark" routerLink="/signUp">Sign up</button>
            </a>
          </li>
      </ul>
  </div>
</nav>
	<div class="container">
		<div class="main-body">
			<div class="row gutters-sm">
				<div class="col-md-4 mb-3">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<img src="https://www.nicepng.com/png/detail/115-1150821_default-avatar-comments-sign-in-icon-png.png"
									alt="Admin" width="150">
								<div class="mt-3">
									<h4>John Doe</h4>
									<p class="text-secondary mb-1">Hotel Owner</p>
							 		<button type="button" class="edit-button" data-toggle="modal" data-target="#exampleModal"> Change Avatar </button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-8">
					<div class="card mb-3">
						<div class="card-body">
							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">Name</h6>
								</div>
								 <div class="col-md-5"><input type="text" class="form-control" placeholder="John" value=""> <button type="button" class="btn btn-danger" style="margin-left : 280px; margin-top: -70px;">Delete</button>
								 </div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">Email</h6>
								</div>
								  <div class="col-md-5"><input type="text" class="form-control" value="" placeholder="John@gmail.com"></div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">Password</h6>
								</div>
								<div class="col-md-5"><input type="text" class="form-control" placeholder="*******" value=""></div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">Role</h6>
								</div>
								 <div class="col-md-5"><input type="text" class="form-control" value="" placeholder="Owner"></div>
							</div>
							<hr>
							<div class="row">
								<button type="button" class="btn btn-success" style="margin-left: 300px;">Update profile</button>
								</div>
							</div>
							<hr>
</body>
</html>