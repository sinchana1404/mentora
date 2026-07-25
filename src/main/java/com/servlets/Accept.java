package com.servlets;

import java.io.IOException;

import com.dao.imp.ExchangeRequestDAOImpl;
import com.dao.inf.ExchangeRequestDAOINF;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Accept")
public class Accept extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ExchangeRequestDAOINF edao = new ExchangeRequestDAOImpl();
		edao.acceptRequest(Integer.parseInt(req.getParameter("accept")));
		resp.sendRedirect("Requests.jsp");
	}

}
