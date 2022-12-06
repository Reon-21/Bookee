package com.dvops.maven.eclipse;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BookingServlet
 */
@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		String startDate = request.getParameter("startdate").toString();
		String endDate = request.getParameter("enddate").toString();
		String hotelId = request.getParameter("hoteId").toString();
		int intHotelId = Integer.parseInt(hotelId);
		User loggedInUser = (User)session.getAttribute("loggedInUser");
		String loggedInEmail = loggedInUser.getEmail().toString();
		
		Booking newBooking = new Booking(startDate, endDate,loggedInEmail, intHotelId);
		
		if(session.getAttribute("bookingList") == null) {
			ArrayList<Booking> listOfBooking = new ArrayList<Booking>();
			listOfBooking.add(newBooking);
			session.setAttribute("bookingList", listOfBooking);
			response.sendRedirect("hotelDetails.jsp");
		}
		else {
			ArrayList<Booking> existingBooking = (ArrayList)session.getAttribute("bookingList");
			existingBooking.add(newBooking);
			session.setAttribute("bookingList", existingBooking);
			response.sendRedirect("hotelDetails.jsp");
		}
		
	}

}
