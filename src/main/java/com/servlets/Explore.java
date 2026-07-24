package com.servlets;

import java.io.IOException;
import java.util.List;

import com.dao.imp.UserDAOIMP;
import com.dao.inf.UserDAOINF;
import com.dto.UserDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/searchpage")
public class Explore extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String search = req.getParameter("search");
        String type = req.getParameter("type");
        String prof = req.getParameter("prof");

        UserDAOINF udao = new UserDAOIMP();

        List<UserDTO> users = null;

        if ("skill".equalsIgnoreCase(type)) {

            users = udao.searchUsersBySkill(search, prof);

        } else if ("category".equalsIgnoreCase(type)) {

            users = udao.searchUsersByCategory(search, prof);

        } else {

            req.setAttribute("failure", "Please choose a valid search type.");
            req.getRequestDispatcher("Explore.jsp").forward(req, resp);
            return;
        }

        req.setAttribute("users", users);

        req.getRequestDispatcher("Explore.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        UserDAOINF udao = new UserDAOIMP();

        
        List<UserDTO> users = udao.getAllUsers();

        req.setAttribute("users", users);

        req.getRequestDispatcher("Explore.jsp").forward(req, resp);
    }
}