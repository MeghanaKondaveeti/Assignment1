package com.amvsy.week3.assigment1.servlet1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class servlet1
 */
@WebServlet("/servlet1")
public class servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public servlet1() {
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
		// doGet(request, response);

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		// Cookie is getting created using below syntax
		String name = request.getParameter("userName");
		Cookie ck = new Cookie("userName", name);// creating cookie object
		response.addCookie(ck);// adding cookie in the response

		String n = request.getParameter("userName");
		String p = request.getParameter("userPass");

		// Main purpose of servlet1 is to create cookie and to perform validation
		// Validation with Constraints
		// Authentication would be successful when user would enter java as username and
		// password

		if (n.equals("java") && p.equals("java")) {
			RequestDispatcher rd = request.getRequestDispatcher("session.jsp");
			rd.forward(request, response);
		}

		// Page will not allow user to login with null username and password
		else if (n.equals(null) || p.equals(null)) {
			out.print("Sorry UserName or Password cannot be empty!");
			RequestDispatcher rd = request.getRequestDispatcher("/LoginFailed.jsp");
			rd.include(request, response);
		}

		// Username and password must be of minimum length 8 and maximum length 16
		else if (n.length() <= 8 || n.length() >= 16) {

			out.print("Sorry UserName must be of minimum 8 characters and maximum 16 characters!");
			RequestDispatcher rd = request.getRequestDispatcher("/LoginFailed.jsp");
			rd.forward(request, response);
		} else if (p.length() <= 8 || p.length() >= 16) {
			out.print("Sorry Password must be of minimum 8 characters and maximum 16 characters!");
			RequestDispatcher rd = request.getRequestDispatcher("/LoginFailed.jsp");
			rd.forward(request, response);
		}

		else {
			out.print("Sorry UserName or Password Error!");
			RequestDispatcher rd = request.getRequestDispatcher("/LoginFailed.jsp");
			rd.include(request, response);
		}
	}

}
