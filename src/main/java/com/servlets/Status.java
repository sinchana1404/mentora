package com.servlets;

import java.io.IOException;

import com.dao.imp.ExchangeRequestDAOImpl;
import com.dao.inf.ExchangeRequestDAOINF;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Cancel")
public class Status extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ExchangeRequestDAOINF edao = new ExchangeRequestDAOImpl();
		edao.deleteRequest(Integer.parseInt(req.getParameter("cancel")));
		resp.sendRedirect("Requests.jsp");
	}
}
