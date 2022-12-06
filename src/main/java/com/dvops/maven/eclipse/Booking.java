package com.dvops.maven.eclipse;

public class Booking {
	String startDate;
	String endDate;
	String bookerEmail;
	int hotelId;
	
	public Booking(String startDate, String endDate, String bookerEmail, int hotelId) {
		this.startDate = startDate;
		this.endDate = endDate;
		this.bookerEmail = bookerEmail;
		this.hotelId = hotelId;
	}
	
	public String getStartDate() {
		return startDate;
	}
	
	public String getEndDate() {
		return endDate;
	}
	
	public String getBookerEmail() {
		return bookerEmail;
	}
	
	public int getHotelId() {
		return hotelId;
	}
}
