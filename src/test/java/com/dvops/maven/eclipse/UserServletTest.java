package com.dvops.maven.eclipse;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class UserServletTest {

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void testDoPostHttpServletRequestHttpServletResponse() {
		String profilePicture = "profile.jpg";
	    String email = "user@example.com";
	    String username = "username";
	    String password = "password";
	    String gender = "male";
	    String address = "123 Main St";

	    User user = new User(profilePicture, email, username, password, gender, address);

	    assertEquals(profilePicture, user.getProfilePicture());
	    assertEquals(email, user.getEmail());
	    assertEquals(username, user.getUsername());
	    assertEquals(password, user.getPassword());
	    assertEquals(gender, user.getGender());
	    assertEquals(address, user.getAddress());
	  
	}

}
