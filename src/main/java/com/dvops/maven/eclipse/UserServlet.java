package com.dvops.maven.eclipse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		PrintWriter writer = response.getWriter();
		
		String username = request.getParameter("username");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
			
		User loggedInUser = (User)session.getAttribute("loggedInUser");
		ArrayList<User> registeredUserList = (ArrayList)session.getAttribute("users");
		
		loggedInUser.setUsername(username);
		loggedInUser.setAddress(address);
		
		
		for(int i=0; i < registeredUserList.size(); i++) {
			if(registeredUserList.get(i).getEmail().equals(email)) {
				registeredUserList.set(i, loggedInUser);
				session.setAttribute("users", registeredUserList);
				ArrayList<User> newregisteredUserList = (ArrayList)session.getAttribute("users");
			}
			else {
				writer.println("<script type=\"text/javascript\">");
				writer.println("window.location.href = 'http://localhost:8091/DevOps-Project/UserProfile.jsp';");
			    writer.println("alert('Account has been updated successfully!');");
			    writer.println("</script>");
			}
		}
		
		
		doGet(request, response);
		
		
	}

}
