package com.dvops.maven.eclipse;

public class Hotel {
	private String id;
	private String hotelImage;
	private String hotelName;
	private String hotelAddress;
	private String hotelWebsite;
	private String hotelEmail;
	private String hotelPhoneNumber;
	private String roomBeds;
	private String roomSize;
	private String sleepingCapacity;
	private int pricePerNight;
	
	
	public Hotel(String id, String hotelImage, String hotelName, String hotelAddress, String hotelWebsite, String hotelEmail, String hotelPhoneNumber, String roomBeds, String roomSize, String sleepingCapacity, int pricePerNight) {
		this.id = id;
		this.hotelImage = hotelImage;
		this.hotelName = hotelName;
		this.hotelAddress = hotelAddress;
		this.hotelWebsite = hotelWebsite;
		this.hotelEmail = hotelEmail;
		this.hotelPhoneNumber = hotelPhoneNumber;
		this.roomBeds = roomBeds;
		this.roomSize = roomSize;
		this.sleepingCapacity = sleepingCapacity;
		this.pricePerNight = pricePerNight;
	}
	
	public String getId() {
		return id;
	}
	
	public String getHotelImage() {
		return hotelImage;
	}
	
	public String getHotelName() {
		return hotelName;
	}
	
	public String getHotelAddress() {
		return hotelAddress;
	}
	
	public String getHotelWebsite() {
		return hotelWebsite;
	}
	
	public String getHotelEmail() {
		return hotelEmail;
	}
	
	public String getHotelPhoneNumber() {
		return hotelPhoneNumber;
	}
	
	public String getRoomBeds() {
		return roomBeds;
	}
	
	public String getRoomSize() {
		return roomSize;
	}
	
	public String getSleepingCapacity() {
		return sleepingCapacity;
	}
	
	public int getPricePerNight() {
		return pricePerNight;
	}
}
