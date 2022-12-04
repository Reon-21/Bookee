package com.dvops.maven.eclipse;

public class User {
	private String profilePicture;
	private String email;
	private String username;
	private String password;
	private String gender;
	private String address;
	
	public User(String profilePicture, String email, String username, String password, String gender, String address) {
		this.profilePicture = profilePicture;
		this.email = email;
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.address = address;
	}
	
	
	public String getProfilePicture() {
		return profilePicture;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getUsername() {
		return username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public String getGender() {
		return gender;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setProfilePicture(String newProfilePicture) {
		this.profilePicture = newProfilePicture;
	}
	
	public void setUsername(String newUsername) {
		this.username = newUsername;
	}
	
	public void setPassword(String newPassword) {
		this.password = newPassword;
	}
	
	public void setAddress(String newAddress) {
		this.address = newAddress;
	}
}