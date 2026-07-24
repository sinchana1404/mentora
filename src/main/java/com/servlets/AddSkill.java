package com.servlets;

import java.io.IOException;

import com.dao.imp.SkillDAOImpl;
import com.dao.imp.UserSkillDAOImpl;
import com.dao.inf.SkillDAOINF;
import com.dao.inf.UserSkillDAOINF;
import com.dto.SkillDTO;
import com.dto.UserDTO;
import com.dto.UserSkillDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AddSkill")
public class AddSkill extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		UserDTO u =(UserDTO)session.getAttribute("user");
		SkillDAOINF sdao = new SkillDAOImpl();
		UserSkillDAOINF usdao = new UserSkillDAOImpl();
		SkillDTO s =  sdao.getSkillByName(req.getParameter("skillName"));
		if(s == null) {
			s= new SkillDTO();
			s.setCategory(req.getParameter("category"));
			s.setSkillName(req.getParameter("skillName"));
			sdao.addSkill(s);
			s = sdao.getSkillByName(req.getParameter("skillName"));
		}
		
		UserSkillDTO us = new UserSkillDTO();
		us.setUserId(u.getUserId());
		us.setProficiency(req.getParameter("proficiency"));
		us.setSkillId(s.getSkillId());
		usdao.addUserSkill(us);
		
		resp.sendRedirect("AddSkill.jsp");
	}

}
