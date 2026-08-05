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
@WebServlet("/Reset")
public class Reset extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDAOINF udao = new UserDAOIMP();
		HttpSession session = req.getSession();
		UserDTO u=(UserDTO)session.getAttribute("user");
		if(u == null)
		{
		    resp.sendRedirect("Login.jsp");
		    return;
		}

		
		if(u.getPassword().equals(req.getParameter("currentPassword"))) {
			if(req.getParameter("newPassword").equals(req.getParameter("confirmPassword"))) {
				u.setPassword(req.getParameter("newPassword"));
				udao.updateUser(u);
				resp.sendRedirect("DashBoard.jsp");
				
			}
			else {
				req.setAttribute("reset", "Invalid password");
				req.getRequestDispatcher("Reset.jsp").forward(req, resp);
			}
		}
		else {
			req.setAttribute("reset", "not valid credentials");
			req.getRequestDispatcher("Reset.jsp").forward(req, resp);
		}
	}
		
	}


