package com.dvops.maven.eclipse;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class UserTest {

	User user = new User("ProfilePicture", "oo@gmail.com", "Dave", "12345", "male", "Upper Serangoon Road");

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void testGetProfilePicture() {
		// fail("Not yet implemented");
		// Arrange
		String expected = "ProfilePicture";
		// Act
		String actual = user.getProfilePicture();
		// Assert
		assertEquals(expected, actual);
	}

	@Test
	void testGetEmail() {
		// fail("Not yet implemented");
		// Arrange
		String expected = "oo@gmail.com";
		// Act
		String actual = user.getEmail();
		// Assert
		assertEquals(expected, actual);
	}

	@Test
	void testGetUsername() {
		// fail("Not yet implemented");
		// Arrange
		String expected = "Dave";
		// Act
		String actual = user.getUsername();
		// Assert
		assertEquals(expected, actual);
	}

	@Test
	void testGetPassword() {
		// fail("Not yet implemented");
		// Arrange
		String expected = "12345";
		// Act
		String actual = user.getPassword();
		// Assert
		assertEquals(expected, actual);
	}

	@Test
	void testGetGender() {
		// fail("Not yet implemented");
		// Arrange
		String expected = "male";
		// Act
		String actual = user.getGender();
		// Assert
		assertEquals(expected, actual);
	}

	@Test
	void testGetAddress() {
		// fail("Not yet implemented");
		// Arrange
		String expected = "Upper Serangoon Road";
		// Act
		String actual = user.getAddress();
		// Assert
		assertEquals(expected, actual);
	}

	@Test
	void testSetProfilePicture() {
		//fail("Not yet implemented");
		String Pfp = "PFP1";
		User instance = new User("ProfilePicture", "oo@gmail.com", "Dave", "12345", "male", "Upper Serangoon Road");
		instance.setProfilePicture(Pfp);
		assertEquals(instance.getProfilePicture(), Pfp);
		
	}

	@Test
	void testSetUsername() {
		//fail("Not yet implemented");
		String username = "Daniel";
		User instance = new User("ProfilePicture", "oo@gmail.com", "Dave", "12345", "male", "Upper Serangoon Road");
		instance.setUsername(username);
		assertEquals(instance.getUsername(), username);
	}

	@Test
	void testSetPassword() {
		//fail("Not yet implemented");
		String password = "54321";
		User instance = new User("ProfilePicture", "oo@gmail.com", "Dave", "12345", "male", "Upper Serangoon Road");
		instance.setPassword(password);
		assertEquals(instance.getPassword(), password);
		
	}

	@Test
	void testSetAddress() {
		//fail("Not yet implemented");
		String address = "Upper Serangoon Avenue";
		User instance = new User("ProfilePicture", "oo@gmail.com", "Dave", "12345", "male", "Upper Serangoon Road");
		instance.setAddress(address);
		assertEquals(instance.getAddress(), address);
	}

}
