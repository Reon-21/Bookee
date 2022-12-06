<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.dvops.maven.eclipse.HotelCollection" %>
<%@page import="com.dvops.maven.eclipse.Hotel" %>
<%@page import="com.dvops.maven.eclipse.Booking" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css">
<link rel="stylesheet" type="text/css" href="https://cdn-uicons.flaticon.com/uicons-regular-straight/css/uicons-regular-straight.css">
<link rel="stylesheet" type="text/css" href="https://cdn-uicons.flaticon.com/uicons-solid-rounded/css/uicons-solid-rounded.css">
<head>
<style>
* {
	font-family: 'Montserrat', sans-serif;
}
</style>
<meta charset="ISO-8859-1">
<title>Hotel Details</title>
</head>
<body>
	<div class="container" style="margin-top: 50px;">
	
		<% HotelCollection hotelCollection = new HotelCollection();%>
		<% Hotel[] allHotelList = hotelCollection.getAllHotels(); %>
		<% String hotelIdString = (String)session.getAttribute("hotelID"); %>
		<% int hotelId = Integer.parseInt(hotelIdString); %>
	
		<div class="row justify-content-center" style="margin-top: 50px; width: 100%;">
			<img src=<%=allHotelList[hotelId].getHotelImage()%> style="height: 500px; max-width: 72%; border-radius: 30px; object-fit: cover; position: absolute;">
		</div>
		<div class="row justify-content-center" style="margin-top: 550px; width: 100%; padding-bottom: 50px;">
			<div class="col-md-7">
				<div class="card" style="border-radius: 5px; width: 100%; height: 330px;">
				<div class="card-body">
					<div class="card-title">
						<h2><%=allHotelList[hotelId].getHotelName()%></h2>
						<br>
						<div class="card-text">
						<p><i class="fi fi-rs-marker"></i> <%=allHotelList[hotelId].getHotelAddress()%></p>
						</div>
						<div class="card-text">
						<p><i class="fi fi-rr-bed"></i> <%=allHotelList[hotelId].getRoomBeds()%></p>
						</div>
						<div class="card-text">
						<p><i class="fi fi-rs-building"></i> <%=allHotelList[hotelId].getRoomSize()%></p>
						</div>
						<div class="card-text">
						<p><i class="fi fi-rr-users"></i> <%=allHotelList[hotelId].getSleepingCapacity()%></p>
						</div>
						<br>
						<div class="card-text">
						<h2 style="color: green;"><b>$ <%=allHotelList[hotelId].getPricePerNight()%></b></h2>
						</div>
						</div>
				</div>
			</div>
			</div>
			
			<div class="col-md-5">
				<div class="card" style="border-radius: 5px; width: 100%; height: 330px;">
				<div class="card-body">
					<div class="card-title">
						<h3>Contact Information</h3>
					</div>
					<br>
					<div class="card-link">
						<p><i class="fi fi-sr-globe"></i> <%=allHotelList[hotelId].getHotelWebsite()%></p>
					</div>
					<div class="card-text">
						<p><i class="fi fi-rr-envelope"></i> <%=allHotelList[hotelId].getHotelEmail()%></p>
					</div>
					<div class="card-text">
						<p><i class="fi fi-rr-phone-call"></i> <%=allHotelList[hotelId].getHotelPhoneNumber()%></p>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="row justify-content-left" style="margin-left: 0px;">
		<div class="alert alert-warning">
				<i class="fi fi-rr-bulb"></i> Our booking system runs on a first come first serve basis please ensure the dates that you have chosen has not been taken!
			</div>
		</div>
		<div class="row justify-content-left" style="margin-left: 0px;">
			<h1>Make A Booking</h1>
		</div>
		<br>
		<div class="row justify-content-left" style="margin-left: 0px; padding-bottom: 50px;">
			<form action="BookingServlet" method="post">
			<div class="row justify-content-left" style="margin-left: -13px; width: 1000px;">
				<div class="col-md-6">
				<label for="startdate">Start</label>
				<input type="text" class="form-control"name="startdate" placeholder="DD/MM/YYYY">
				</div>
				<div class="col-md-6">
					<label for="enddate">End</label>
				<input type="text" class="form-control"name="enddate" placeholder="DD/MM/YYYY">
				</div>
				<input type="hidden" name="hoteId" value="<%=hotelId%>">
			</div>
			<br>
			<div class="row justify-content-left" style="margin-left: 2px;">
				<button class="btn btn-success" type="submit">Submit Booking</button>
			</div>
			</form>
		</div>
		<br>
		<div class="row justify-content-left" style="margin-left: 0px;">
		<div class="alert alert-info">
				<i class="fi fi-rr-exit"></i> Please provide your email when you are checking in into the hotel
			</div>
		</div>
		<h1>Slots Taken</h1>
		<br>
		<% 
			ArrayList<Booking> existingBooking = (ArrayList)session.getAttribute("bookingList");
		
			for(int i = 0; i < existingBooking.size(); i++){
				if(existingBooking.get(i).getHotelId() == hotelId){
		%>
		<div class="card" style="margin-bottom: 20px;">
			<div class="card-body">
				<div class="row justify-content-center">
				<p style="font-weight: bold; font-style: italic;"><%=existingBooking.get(i).getStartDate()%> to <%=existingBooking.get(i).getEndDate()%></p>
				</div>
			</div>
		</div>
		<%}}%>
		
</div>		
</body>
</html>