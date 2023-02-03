package com.dvops.maven.eclipse;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class HotelCollectionTest {

	private HotelCollection hc;
	private Hotel h1;
	private Hotel h2;
	private Hotel h3;
	private final int HOTEL_COLLECTION_SIZE = 3;
	private Hotel listOfHotels[];

	@BeforeEach
	void setUp() throws Exception {
		// Arrange
		hc = new HotelCollection();
		h1 = new Hotel("0", "", "Vilage Hotel Sentosa",
				"10 Artillery Avenue, #02-01, Sentosa Island, Singapore, 099951", "www.villagehotels.asia",
				"info.vhs@fareast.com.sg", "6722 0800", "1 Queen Bed", "22m²", "2 Pax", 489);
		h2 = new Hotel("1", "", "The Outpost Hotel Sentosa",
				"10 Artillery Avenue, #03-01, Sentosa Island, Singapore, 099951", "www.theoutposthotel.com.sg",
				"info.toh@fareast.com.sg", "6722 0801", "1 King Bed", "24m²", "3 Pax", 477);
		h3 = new Hotel("2", "", "Oasia Resort Sentosa", "23 Beach View, #01-03 Palawan Ridge, Singapore 098679",
				"www.oasiahotels.com", "info.toh@fareast.com.sg", "6818 3388", "1 King Bed", "40m²", "3 Pax", 763);
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void testGetAllHotels() {
		//fail("Not yet implemented");
		 listOfHotels = hc.getAllHotels();
	}

}
