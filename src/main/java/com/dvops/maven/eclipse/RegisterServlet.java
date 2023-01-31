package com.dvops.maven.eclipse;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;

import java.io.PrintWriter;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		String profilePicture = "";
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String address = "";
	
		if(email.isEmpty() || username.isEmpty()|| password.isEmpty() || gender.isEmpty()) {
			RequestDispatcher req = request.getRequestDispatcher("register.jsp");
			req.include(request, response);
		}else {
			PrintWriter writer = response.getWriter();
			HttpSession session = request.getSession();
			User newUser = new User(profilePicture, email, username, password, gender, address);
			
			if(session.getAttribute("users") == null) {
				ArrayList<User> listOfUser = new ArrayList<User>(); 
				listOfUser.add(newUser);
				session.setAttribute("users", listOfUser);
				writer.println("<div style='margin-top: 110px; margin-left: auto; margin-right: auto; width: 50%; height: 50%; display:block; text-align:center;'>");
				writer.println("<img style='width: 212px; height: 212px;'; src='images/crab.png'>");
				writer.println("<h2 style='font-family: Montserrat, sans-serif; margin-top: 30px;'>Your Account Has Been Registered Successfully!</h2>");
				writer.println("<button type='button' onclick=location.href='http://localhost:8091/Bookee/login.jsp'; style='margin-top: 30px; background: linear-gradient(to right, #FF4B2B, #FF416C)!important; color: white !important; box-shadow: none !important; border-radius: 20px; border: 2px solid #FFFFFF; padding: 12px 45px; font-size: 12px; font-weight: bold; padding: 12px 45px;'>GO TO LOGIN</button>");
				writer.println("</div>");
			}
			else {
				ArrayList<User> existingUserList = (ArrayList)session.getAttribute("users");
				boolean addUser = true;
				for(int i = 0; i < existingUserList.size(); i++) {
					if(existingUserList.get(i).getEmail().toString().equals(newUser.getEmail().toString())) {
						addUser = false;
						writer.println("<script type=\"text/javascript\">");
					    writer.println("alert('The e-mail provided is already in use!');");
					    writer.println("window.location.href = 'http://localhost:8091/Bookee/register.jsp';");
					    writer.println("</script>");
						break;
					}	
				}
				if(addUser){
					existingUserList.add(newUser);
					session.setAttribute("users", existingUserList);
					writer.println("<div style='margin-top: 110px; margin-left: auto; margin-right: auto; width: 50%; height: 50%; display:block; text-align:center;'>");
					writer.println("<img style='width: 212px; height: 212px;'; src='images/crab.png'>");
					writer.println("<h2 style='font-family: Montserrat, sans-serif; margin-top: 30px;'>Your Account Has Been Registered Successfully!</h2>");
					writer.println("<button type='button' onclick=location.href='http://localhost:8091/Bookee/login.jsp'; style='margin-top: 30px; background: linear-gradient(to right, #FF4B2B, #FF416C)!important; color: white !important; box-shadow: none !important; border-radius: 20px; border: 2px solid #FFFFFF; padding: 12px 45px; font-size: 12px; font-weight: bold; padding: 12px 45px;'>GO TO LOGIN</button>");
					writer.println("</div>");
				}
				
			}
		}
		
	}

}
