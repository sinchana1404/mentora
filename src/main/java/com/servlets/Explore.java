package com.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

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

@WebServlet("/searchpage")
public class Explore extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<UserSkillDTO> userList = new ArrayList();
		List<SkillDTO> sList = null;
		
		UserSkillDAOINF usdao = new UserSkillDAOImpl();
		SkillDAOINF sdao = new SkillDAOImpl();
		if(req.getParameter("type").equalsIgnoreCase("skill")) {
		sList = sdao.getAllSkills().stream().filter(s->s.getSkillName().equalsIgnoreCase("search")).collect(Collectors.toList());
		}
		else if(req.getParameter("type").equalsIgnoreCase("category")) {
		sList = sdao.getAllSkills().stream().filter(s->s.getCategory().equalsIgnoreCase("search")).collect(Collectors.toList());
		}
		else {
			req.setAttribute("failure", "choose proper type");
			req.getRequestDispatcher("Explore.jsp").forward(req, resp);
		}
		for(SkillDTO s : sList) {
		List<UserSkillDTO> udto =usdao.getUserSkillsBySkillId(s.getSkillId()).stream().filter(us->us.getProficiency().equalsIgnoreCase("prof")).collect(Collectors.toList());
		userList.addAll(udto);
		}
		
		req.setAttribute("list", userList);
		req.getRequestDispatcher("Explore.jsp").forward(req, resp);
	}
}
