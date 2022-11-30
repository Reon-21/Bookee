package com.dvops.maven.eclipse;

public class User {
	private String profilePicture;
	private String email;
	private String username;
	private String password;
	private String role;
	private String address;
	
	public User(String profilePicture, String email, String username, String password, String role, String address) {
		this.profilePicture = profilePicture;
		this.email = email;
		this.username = username;
		this.role = role;
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
	
	public String getRole() {
		return role;
	}
	
	public String getAddress() {
		return address;
	}
}