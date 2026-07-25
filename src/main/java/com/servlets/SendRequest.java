package com.servlets;

import java.io.IOException;

import com.dao.imp.ExchangeRequestDAOImpl;
import com.dao.imp.SkillDAOImpl;
import com.dao.inf.ExchangeRequestDAOINF;
import com.dao.inf.SkillDAOINF;
import com.dto.ExchangeRequestDTO;
import com.dto.UserDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/SubmitRequest")
public class SendRequest extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ExchangeRequestDTO e = new ExchangeRequestDTO();
		ExchangeRequestDAOINF edao = new ExchangeRequestDAOImpl();
		HttpSession session = req.getSession();
		UserDTO u = (UserDTO)session.getAttribute("user");
		SkillDAOINF sdao = new SkillDAOImpl();
		e.setOfferedSkillId(sdao.getSkillByName(req.getParameter("offeredSkill")).getSkillId());
		e.setMessage(req.getParameter("message"));
		e.setReceiverId(Integer.parseInt(req.getParameter("receiverId")));
		e.setRequestedSkillId(sdao.getSkillByName(req.getParameter("requestedSkill")).getSkillId());
		e.setSenderId(u.getUserId());
		e.setStatus("pending");
		edao.sendRequest(e);
		
		resp.sendRedirect("DashBoard.jsp");
		
	}
}
