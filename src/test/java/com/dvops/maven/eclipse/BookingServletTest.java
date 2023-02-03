package com.dvops.maven.eclipse;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.mockito.Mockito.*;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

class BookingServletTest {

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void testDoGetHttpServletRequestHttpServletResponse() {
		//fail("Not yet implemented");
	}

	@Test
	void testDoPostHttpServletRequestHttpServletResponse() throws ServletException, IOException {
		HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);
        HttpSession session = mock(HttpSession.class);
        User loggedInUser = mock(User.class);

        when(request.getSession()).thenReturn(session);
        when(request.getParameter("startdate")).thenReturn("2022-01-01");
        when(request.getParameter("enddate")).thenReturn("2022-01-31");
        when(request.getParameter("hoteId")).thenReturn("1");
        when(loggedInUser.getEmail()).thenReturn("test@email.com");
        when(session.getAttribute("loggedInUser")).thenReturn(loggedInUser);

        BookingServlet servlet = new BookingServlet();
        servlet.doPost(request, response);

        verify(session, times(1)).getAttribute("bookingList");
        verify(session, atLeastOnce()).setAttribute("bookingList", any(ArrayList.class));
        verify(response, atLeastOnce()).sendRedirect("hotelDetails.jsp");
	}

}
