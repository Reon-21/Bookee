package com.dvops.maven.eclipse;

public class HotelCollection {
	
	private Hotel listOfHotels[] = new Hotel[3];
	
	public HotelCollection() {
		Hotel firstHotel = new Hotel("0", "", 
				"Vilage Hotel Sentosa", "10 Artillery Avenue, #02-01, Sentosa Island, Singapore, 099951", "www.villagehotels.asia", "info.vhs@fareast.com.sg", "6722 0800", "1 Queen Bed", "22m²", "2 Pax", 489);
		
		Hotel secondHotel = new Hotel("1", "",
				"The Outpost Hotel Sentosa", "10 Artillery Avenue, #03-01, Sentosa Island, Singapore, 099951", "www.theoutposthotel.com.sg", "info.toh@fareast.com.sg", "6722 0801", "1 King Bed", "24m²", "3 Pax", 477);
	
		Hotel thirdHotel = new Hotel("2", "", 
				"Oasia Resort Sentosa", "23 Beach View, #01-03 Palawan Ridge, Singapore 098679", "www.oasiahotels.com", "info.toh@fareast.com.sg", "6818 3388", "1 King Bed", "40m²", "3 Pax", 763);
		
		listOfHotels[0] = firstHotel;
		listOfHotels[1] = secondHotel;
		listOfHotels[2] = thirdHotel;
	}
	
	public Hotel[] getAllHotels() {
		return listOfHotels;
	}
}
