package com.dvops.maven.eclipse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AuthenticateServlet
 */
@WebServlet("/AuthenticateServlet")
public class AuthenticateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthenticateServlet() {
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
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String gender = "";
		
		HttpSession session = request.getSession();
		PrintWriter writer = response.getWriter();
		ArrayList<User> registeredUserList = (ArrayList)session.getAttribute("users");
		boolean login = false;
		
		for(int i = 0; i < registeredUserList.size(); i++) {
			if(registeredUserList.get(i).getEmail().toString().equals(email) && registeredUserList.get(i).getPassword().toString().equals(password)) {
				login = true;
				gender = registeredUserList.get(i).getGender().toString();
				User loggedInUser = registeredUserList.get(i);
				session.setAttribute("loggedInUser", loggedInUser);
				break;
			}
		}
		
		if(login) {
			writer.println("<script type=\"text/javascript\">");
		    writer.println("window.location.href = 'http://localhost:8091/Bookee/hotels.jsp';");
		    writer.println("</script>");
		}
		else {
			writer.println("<script type=\"text/javascript\">");
		    writer.println("alert('Incorrect email or password');");
		    writer.println("window.location.href = 'http://localhost:8091/Bookee/login.jsp';");
		    writer.println("</script>");
		}
		
		
	}

}