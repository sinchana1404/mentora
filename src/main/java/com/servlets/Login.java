package com.servlets;

import java.io.IOException;

import com.dao.imp.UserDAOIMP;
import com.dao.inf.UserDAOINF;
import com.dto.UserDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/login")
public class Login extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDAOINF dao = new UserDAOIMP();
		UserDTO dto = dao.loginUser(req.getParameter("mail"),req.getParameter("password"));
		if(dto!=null) {
			HttpSession session= req.getSession();
			session.setAttribute("user", dto);
			resp.sendRedirect("DashBoard.jsp");
		}
		else {
			req.setAttribute("failure", "login failed");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
		
		
	}

}
