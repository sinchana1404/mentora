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
import jakarta.servlet.http.HttpSession;

@WebServlet("/UpdateProfile")
public class Update extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession();

        UserDTO user = (UserDTO) session.getAttribute("user");

        if (user == null) {
            resp.sendRedirect("Login.jsp");
            return;
        }

        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String email = req.getParameter("email");
        long phone = Long.parseLong(req.getParameter("phone"));
        String city = req.getParameter("city");
        String bio = req.getParameter("bio");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");

        if (!password.equals(confirmPassword)) {

            req.setAttribute("failure", "Passwords do not match.");

            req.getRequestDispatcher("update.jsp")
               .forward(req, resp);

            return;
        }

        user.setUser_fname(fname);
        user.setUser_lname(lname);
        user.setEmail(email);
        user.setPhone_number(phone);
        user.setCity(city);
        user.setBio(bio);
        user.setPassword(password);

        UserDAOINF udao = new UserDAOIMP();

        boolean result = udao.updateUser(user);

        if (result) {

            // Update session with latest user details
            session.setAttribute("user", user);

            req.setAttribute("success", "Profile updated successfully.");

        } else {

            req.setAttribute("failure", "Profile update failed.");

        }

        req.getRequestDispatcher("update.jsp")
           .forward(req, resp);
    }
}