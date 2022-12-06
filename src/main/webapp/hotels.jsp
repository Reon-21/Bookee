<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.dvops.maven.eclipse.HotelCollection" %>
 <%@page import="com.dvops.maven.eclipse.Hotel" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css">
<link rel="stylesheet" type="text/css" href="https://cdn-uicons.flaticon.com/uicons-regular-straight/css/uicons-regular-straight.css">
<meta charset="ISO-8859-1">
<title>Hotels</title>
</head>
<body>

<div class="container">
	<div class="row justify-content-center" style="margin-top: 50px;">
		<h1 style="position: absolute; z-index: 100; color: white; margin-right: 550px; margin-top: 100px;">Book A Hotel Room</h1>
		<p style="position: absolute; z-index: 100; color: white; margin-top: 200px; margin-right: 580px;'"><i>From any of our hotel partners all in one place!</i></p>
		<img src="images/hotelPageImage.jpg" style="height: 350px; max-width: 100%; border-radius: 30px; object-fit: cover; position: absolute; filter: brightness(60%);">
	</div>
	<div class="row justify-content-left" style="margin-top: 400px; position: relative; margin-left: 100px;">
		<h2>Available Hotel Rooms</h2>
	</div>
	<div class="row justify-content-left" style="margin-top: 50px; position: relative; margin-left: 60px; padding-bottom: 100px;">
		<% HotelCollection hotelCollection = new HotelCollection();%>
		<% Hotel[] allHotelList = hotelCollection.getAllHotels(); %>
		<% for(int i = 0; i < allHotelList.length; i++){%>
			<div class="card" style="width: 18rem; border-radius: 30px; margin-left: 30px;">
  			<img class="card-img-top" src="<%=allHotelList[i].getHotelImage()%>" style="height: 250px; object-fit: cover; border-top-right-radius:30px; border-top-left-radius:30px;" alt="hotel image">
  			<div class="card-body">
    		<h5 class="card-title"><%=allHotelList[i].getHotelName()%></h5>
    		<p class="card-text"><i class="fi fi-rr-bed"></i> <%=allHotelList[i].getRoomBeds()%></p>
    		<p class="card-text"><i class="fi fi-rs-marker"></i> <%=allHotelList[i].getHotelAddress()%></p>
    		<br>
    		<form action="SpecificHotelServlet" method="post">
    			<input type="hidden" name="id" value="<%=allHotelList[i].getId()%>">
    			<button class="btn btn-dark" type="submit">More Details</button>
    		</form>	
  		</div>
		</div>
		<%}%>
	</div>
</div>
</body>
</html>