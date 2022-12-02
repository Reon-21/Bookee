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
	padding: 5px;
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
	margin-top: 130px;
}

.card-body {
	flex: 1 1 auto;
	padding: 1rem;
	height: 383px;
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


.card-bodyProfile{
	height: 383px;
}




</style>
</head>
<body>
<nav class="navbar navbar-light navbar-expand-md bg-light justify-content-center">
  <a href="index.jsp" class="navbar-brand d-flex w-50 mr-auto"><img src="images/BookeeLogo.png" alt="Bookee Logo" style="max-width: 100%; width: 160px;"></a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbar3">
      <span class="navbar-toggler-icon"></span>
  </button>
  <div class="navbar-collapse collapse w-100" id="collapsingNavbar3">
      <ul class="navbar-nav w-100 justify-content-center">
          <li class="nav-item">
              <a class="nav-link" href="#">Hotels</a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="#">Dashboard</a>
          </li>
      </ul>
      <ul class="nav navbar-nav ml-auto w-100 justify-content-end">
        <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/fox.jpg" class="rounded-circle">
        	</a>
        	<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="http://localhost:8091/Bookee/UserProfile.jsp">Edit Profile</a>
          <a class="dropdown-item" href="http://localhost:8091/Bookee/index.jsp">Log Out</a>
        </div>
        </li>
          <li class="nav-item">
            <a href="login.jsp"><button type="button" class="btn btn-outline-dark" style="margin-right: 10px;">Sign In</button></a>
          </li>
          <li class="nav-item">
            <a href="register.jsp"><button type="button" class="btn btn-dark">Sign Up</button></a>
          </li>
      </ul>
  </div>
</nav>
<div class="container">
<form>
	<div class="main-body">
		<div class="row gutter-sm">
			<div class="col-md-4 mb-3">
				<div class="card">
					<div class="card-bodyProfile">
						<div class="d-flex flex-column align-items-center text-center">
							<div style="position: relative">
								<div style="background-image: linear-gradient(to right, rgba(255,75,43,1), rgba(255,65,108,1)); width: 35px; height: 35px; position: absolute; bottom: 0; margin-left: 100px; border-radius: 25px;">
									<img src ="images/pencil.png" style="max-width: 100%; height: 16px; margin-top: 5px;">
								</div>
								<img src="https://www.nicepng.com/png/detail/115-1150821_default-avatar-comments-sign-in-icon-png.png" alt="Admin" style="margin-top: 50px; width: 150px; display: block; border-radius: 100px;"/>
							</div>
							<div class="mt-3">
									<h4>John Doe</h4>
									<p class="text-secondary mb-1">Hotel Owner</p>
							 		<button type="button" class="delete-button"  data-toggle="modal" data-target="#exampleModal"> Delete Account </button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-8">
			<div class="card mb-3">
				<div class="card-body">
					<div class="row justify-content-center" style="margin-top: 50px;">
						<div class="col-md-5">
						<label for="username">Username</label>
						<input type="text" name="username" class="form-control" placeholder="Username">
						</div>
						<div class="col-md-5">
						<label for="email">E-mail</label>
						<input type="email" name="email" class="form-control" placeholder="E-mail">
						</div>
					</div>
					<div class="row justify-content-center" style="margin-top: 25px; padding-bottom: 149px; margin-left: -15px;">
						<div class="col-md-10">
						<label for="address">Address</label>
						<input type="text" name="address" class="form-control" placeholder="Address">
						</div>
					</div>
					<div class="row justify-content-center" style="margin-top: -80px;">
						<div class="col-md-12">
						<hr>
						</div>
					</div>
					<div class="row justify-content-center">
						<div class="col-md-10">
						<button class="btn btn-success btn-block">Update Profile</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		</div>
</form>		
</div>
</body>
</html>