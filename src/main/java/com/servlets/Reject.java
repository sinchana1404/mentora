package com.servlets;



import java.io.IOException;

import com.dao.imp.ExchangeRequestDAOImpl;
import com.dao.inf.ExchangeRequestDAOINF;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Reject")
public class Reject extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ExchangeRequestDAOINF edao = new ExchangeRequestDAOImpl();
		edao.rejectRequest(Integer.parseInt(req.getParameter("reject")));
		resp.sendRedirect("Requests.jsp");
	}

}