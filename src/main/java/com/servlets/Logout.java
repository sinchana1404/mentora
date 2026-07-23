package com.servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/Logout")
public class Logout extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession s=req.getSession();
		if(s.getAttribute("user")!=null) {
			s.invalidate();
			req.setAttribute("success","Logged out successfully!");
			req.getRequestDispatcher("Login.jsp").forward(req, resp);
		}
		else {
			req.setAttribute("Failure","session expired!");
			req.getRequestDispatcher("Login.jsp").forward(req, resp);
		}

}
}
