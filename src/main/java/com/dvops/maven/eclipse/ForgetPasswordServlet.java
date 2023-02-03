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
 * Servlet implementation class ForgetPasswordServlet
 */
@WebServlet("/ForgetPasswordServlet")
public class ForgetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ForgetPasswordServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");

		if (email.isEmpty()) {
			RequestDispatcher req = request.getRequestDispatcher("forgetPassword.jsp");
			req.include(request, response);
		} else {
			PrintWriter writer = response.getWriter();
			HttpSession session = request.getSession();

			ArrayList<User> existingUserList = (ArrayList) session.getAttribute("users");
			for (int i = 0; i < existingUserList.size(); i++) {
				System.out.println(existingUserList.get(i).getPassword().toString());
				if (existingUserList.get(i).getEmail().toString().equals(email)) {

					writer.println("<script type=\"text/javascript\">");
					writer.println("window.location.href = 'http://localhost:8091/DevOps-Project/resetPassword.jsp';");
					writer.println("</script>");
					break;
				}else {
					writer.println("<script type=\"text/javascript\">");
				    writer.println("alert('The e-mail provided is not linked to any account');");
				    writer.println("window.location.href = 'http://localhost:8091/DevOps-Project/forgetPassword.jsp';");
				    writer.println("</script>");
				    
				}
			}

		}

	}
}
