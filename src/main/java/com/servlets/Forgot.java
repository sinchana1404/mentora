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
@WebServlet("/Forgot")
public class Forgot extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDAOINF udao = new UserDAOIMP();
		UserDTO u = udao.findByMail(req.getParameter("email"));
		
		if(u!=null) {
			if(req.getParameter("password").equals(req.getParameter("confirmPassword"))) {
				u.setPassword(req.getParameter("password"));
				udao.updateUser(u);
				req.setAttribute("success", "Password Saved Successfully");
				req.getRequestDispatcher("Forgot.jsp").forward(req, resp);
			}else {
				req.setAttribute("error", "invalid password");
				req.getRequestDispatcher("Forgot.jsp").forward(req, resp);
			} 
			}
			else {
				req.setAttribute("error", "user not found");
				req.getRequestDispatcher("Forgot.jsp").forward(req, resp);
				
			}
		}
		
	}

