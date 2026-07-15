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

@WebServlet("/register")

public class Register extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDAOINF dao = new UserDAOIMP();
		UserDTO dto = new UserDTO ();
		
		dto.setUser_fname(req.getParameter("fname"));
		dto.setUser_lname(req.getParameter("lname"));
		dto.setEmail(req.getParameter("mail"));
		dto.setPhone_number(Long.parseLong(req.getParameter("phone")));
		dto.setBio(req.getParameter("bio"));
		dto.setPassword(req.getParameter("password"));
		
		
		boolean status = dao.registerUser(dto);
		
		if(status) {
		req.setAttribute("success", "Registration successful");
		}else {
			req.setAttribute("failure", "Registration Failed");
		}
		req.getRequestDispatcher("Register.jsp").forward(req, resp);
		
		
	
		
		
	}
	
	
}
