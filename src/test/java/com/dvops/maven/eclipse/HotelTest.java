package com.dvops.maven.eclipse;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class HotelTest {

	Hotel hotel = new Hotel("1001", "image", "Four Sesasons", "442 Orchard Rd, Singapore", "www.4Seasons.com",
			"4Seasons@gmail.com", "88776655", "2", "200", "4", 80);

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void testGetId() {
		// fail("Not yet implemented");
		// Arrange
		String expected = "1001";
		// Act
		String actual = hotel.getId();
		// Assert
		assertTrue(expected.equals(actual));
	}

	@Test
	void testGetHotelImage() {
		// fail("Not yet implemented");
		String expected = "image";
		// Act
		String actual = hotel.getHotelImage();
		// Assert
		assertTrue(expected.equals(actual));
	}

	@Test
	void testGetHotelName() {
		// fail("Not yet implemented");
		String expected = "Four Sesasons";
		// Act
		String actual = hotel.getHotelName();
		// Assert
		assertTrue(expected.equals(actual));
	}

	@Test
	void testGetHotelAddress() {
		// fail("Not yet implemented");
		String expected = "442 Orchard Rd, Singapore";
		// Act
		String actual = hotel.getHotelAddress();
		// Assert
		assertTrue(expected.equals(actual));
	}

	@Test
	void testGetHotelWebsite() {
		// fail("Not yet implemented");
		String expected = "www.4Seasons.com";
		// Act
		String actual = hotel.getHotelWebsite();
		// Assert
		assertTrue(expected.equals(actual));
	}

	@Test
	void testGetHotelEmail() {
		// fail("Not yet implemented");
		String expected = "4Seasons@gmail.com";
		// Act
		String actual = hotel.getHotelEmail();
		// Assert
		assertTrue(expected.equals(actual));
	}

	@Test
	void testGetHotelPhoneNumber() {
		// fail("Not yet implemented");
		String expected = "88776655";
		// Act
		String actual = hotel.getHotelPhoneNumber();
		// Assert
		assertTrue(expected.equals(actual));
	}

	@Test
	void testGetRoomBeds() {
		// fail("Not yet implemented");
		String expected = "2";
		// Act
		String actual = hotel.getRoomBeds();
		// Assert
		assertTrue(expected.equals(actual));
	}

	@Test
	void testGetRoomSize() {
		// fail("Not yet implemented");
		String expected = "200";
		// Act
		String actual = hotel.getRoomSize();
		// Assert
		assertTrue(expected.equals(actual));
	}

	@Test
	void testGetSleepingCapacity() {
		// fail("Not yet implemented");
		String expected = "4";
		// Act
		String actual = hotel.getSleepingCapacity();
		// Assert
		assertTrue(expected.equals(actual));
	}

	@Test
	void testGetPricePerNight() {
		// fail("Not yet implemented");
		int expected = 80;
		// Act
		int actual = hotel.getPricePerNight();
		// Assert
		assertEquals(expected, actual);
	}

}
