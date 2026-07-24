package com.servlets;

import java.io.IOException;

import com.dao.imp.LearningInterestDAOImpl;
import com.dao.imp.SkillDAOImpl;
import com.dao.imp.UserSkillDAOImpl;
import com.dao.inf.LearningInterestDAOINF;
import com.dao.inf.SkillDAOINF;
import com.dto.LearningInterestDTO;
import com.dto.SkillDTO;
import com.dto.UserDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AddGoal")
public class AddGoal extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
HttpSession session = req.getSession();
		
		UserDTO u =(UserDTO)session.getAttribute("user");
		SkillDAOINF sdao = new SkillDAOImpl();
		LearningInterestDAOINF ldao = new LearningInterestDAOImpl();
		LearningInterestDTO li = new LearningInterestDTO();
		SkillDTO s =  sdao.getSkillByName(req.getParameter("skillName"));
		if(s == null) {
			s= new SkillDTO();
			s.setCategory(req.getParameter("category"));
			s.setSkillName(req.getParameter("skillName"));
			sdao.addSkill(s);
			s = sdao.getSkillByName(req.getParameter("skillName"));
		}
		
		li.setSkillId(s.getSkillId());
		li.setUserId(u.getUserId());
		ldao.addLearningInterest(li);
		resp.sendRedirect("AddGoal.jsp");
	}
}
