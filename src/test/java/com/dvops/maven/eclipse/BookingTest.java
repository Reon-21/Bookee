package com.dvops.maven.eclipse;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class BookingTest {
	
	//Create Booking instance
	Booking book = new Booking("11/12/2022", "13/12/2022", "oo@gmail.com", 1001);
	
	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void testGetStartDate() {
		// Arrange
		String expected = "11/12/2022";
		//Act
		String actual = book.getStartDate();
		//Assert
		assertEquals(expected,actual);
	}

	@Test
	void testGetEndDate() {
		//fail("Not yet implemented");
		//Arrange
		String expected = "13/12/2022";
		//Act
		String actual = book.getEndDate();
		//Assert
		assertEquals(expected, actual);
	}

	@Test
	void testGetBookerEmail() {
		//fail("Not yet implemented");
		//Arrange
		String expected = "oo@gmail.com";
		//Act
		String actual = book.getBookerEmail();
		//Assert
		assertEquals(expected, actual);
	}

	@Test
	void testGetHotelId() {
		//fail("Not yet implemented");
		//Arrange
		int expected = 1001;
		//Act
		int actual = book.getHotelId();
		//Assert
		assertEquals(expected, actual);
	}

}
