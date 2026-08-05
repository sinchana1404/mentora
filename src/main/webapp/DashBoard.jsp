<%@page import="com.dao.imp.UserDAOIMP"%>
<%@page import="com.dao.inf.UserDAOINF"%>
<%@ page import="java.util.Comparator" %>
<%@ page import="java.util.stream.Collectors" %>
<%@page import="java.util.stream.Stream"%>
<%@page import="java.util.Comparator"%>
<%@page import="com.dto.ExchangeRequestDTO"%>
<%@page import="com.dto.LearningInterestDTO"%>
<%@page import="com.dao.imp.SkillDAOImpl"%>
<%@page import="com.dao.inf.SkillDAOINF"%>
<%@page import="com.dto.UserSkillDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.imp.ExchangeRequestDAOImpl"%>
<%@page import="com.dao.inf.ExchangeRequestDAOINF"%>
<%@page import="com.dao.imp.LearningInterestDAOImpl"%>
<%@page import="com.dao.inf.LearningInterestDAOINF"%>
<%@page import="com.dao.imp.UserSkillDAOImpl"%>
<%@page import="com.dao.inf.UserSkillDAOINF"%>
<%@page import="com.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Mentora Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="dashboard.css">
</head>

<body>

<% UserDTO user = (UserDTO) session.getAttribute("user"); %>
<% UserSkillDAOINF userSkill = new UserSkillDAOImpl(); %>
<% LearningInterestDAOINF learningInterest = new LearningInterestDAOImpl(); %>
<% ExchangeRequestDAOINF exchange = new ExchangeRequestDAOImpl(); %>
<% UserDAOINF udao = new UserDAOIMP(); %>
<div class="dashboard">

    <!-- ================= Sidebar ================= -->

    <aside class="sidebar">

        <div class="logo">

            <img src="images/logo.jpeg">

            <h2>Mentora</h2>

        </div>

        <ul>

            <li class="active">

                <i class="bi bi-grid"></i>

                <a href = "DashBoard.jsp" class = "sidebar_a" style = "text-decoration: none; color:#0D3B86;">Dashboard</a>

            </li>

            <li>

                <i class="bi bi-search"></i>

               <a href = "Explore.jsp" class = "sidebar_a" style = "text-decoration: none; color:white;">Explore Skills</a>

            </li>

            <li>

                <i class="bi bi-send"></i>
				 <a href = "Requests.jsp" class="sidebar_a" style = "text-decoration: none; color:white;">My Requests</a>
           
            </li>

            <li>

                <i class="bi bi-person"></i>

                 <a href = "Profile.jsp" class  = "sidebar_a" style = "text-decoration: none; color:white;">Profile</a>

            </li>
            
             <li>

                <i class="bi bi-person"></i>

                 <a href = "Reset.jsp" class  = "sidebar_a" style = "text-decoration: none; color:white;">Reset Password</a>

            </li>

            <li>

                <i class="bi bi-box-arrow-right"></i>

                 <a href = "Logout" class = "sidebar_a" style = "text-decoration: none; color:white;">Logout</a>

            </li>

        </ul>

    </aside>

    <!-- ================= Main ================= -->

    <main class="main-content">

        <!-- Top Bar -->

        <div class="topbar">

            <div>

                <h1>

                    Welcome Back, <span style="text-transform: capitalize;"><%= user.getUser_fname() +" "+ user.getUser_lname() %></span> 👋

                </h1>

                <p>

                    Ready to exchange skills today?

                </p>

            </div>

            <button class="explore-btn">

               <a href = "Explore.jsp" style = "text-decoration: none; color:white;">Expolre skills</a>

            </button>

        </div>

        <!-- Statistics -->

        <div class="stats-container">

            <div class="stat-card">

                <div>

                    <h5>Skills I Teach</h5>

                    <h2><%= userSkill.getUserSkills(user.getUserId()).size() %></h2>

                    <span>Active Skills</span>

                </div>

                <div class="stat-icon blue">

                    <i class="bi bi-mortarboard-fill"></i>

                </div>

            </div>

            <div class="stat-card">

                <div>

                    <h5>Learning</h5>

                    <h2><%=learningInterest.getLearningInterests(user.getUserId()).size() %></h2>

                    <span>Learning Goals</span>

                </div>

                <div class="stat-icon green">

                    <i class="bi bi-lightbulb"></i>

                </div>

            </div>

            <div class="stat-card">

                <div>

                    <h5>Pending Requests</h5>

                    <h2><%= exchange.getAllRequestsByStatus("pending").size() %></h2>

                    <span>Awaiting Response</span>

                </div>

                <div class="stat-icon orange">

                    <i class="bi bi-chat-left-text"></i>

                </div>

            </div>

        </div>
                <!-- ================= Middle Section ================= -->

        <div class="middle-section">

            <!-- My Skills -->

            <div class="dashboard-card">

                <div class="card-header">

                    <h3>My Skills</h3>

                    <button class="small-btn"><a href = "AddSkill.jsp" style = "color:white">+ Add Skill</a></button>

                </div>

                <div class="skill-chips">

				<%List<UserSkillDTO> li = userSkill.getUserSkills(user.getUserId());%>
				<% SkillDAOINF skill = new SkillDAOImpl();%>
				<%for(UserSkillDTO us : li) {%>
				<span><%= skill.getSkillById(us.getSkillId()).getSkillName() %></span>
                    <%} %>

                </div>

            </div>

            <!-- Learning Goals -->

            <div class="dashboard-card">

                <div class="card-header">

                    <h3>Skills To Learn</h3>

                    <button class="small-btn"><a href = "AddGoal.jsp" style = "color : white">+ Add Goal</a></button>

                </div>

                <div class="skill-chips learning">

                    <% List<LearningInterestDTO> list = learningInterest.getLearningInterests(user.getUserId()); %>
                    <% for(LearningInterestDTO learn:list){ %>
                    	<span><%= skill.getSkillById(learn.getSkillId()).getSkillName() %></span>
                    <%} %>
                </div>

            </div>

        </div>

        <!-- ================= Bottom Section ================= -->

        <div class="bottom-section">

            <!-- Recent Requests -->

            <div class="dashboard-card">

                <div class="card-header">

                    <h3>Recent Requests</h3>

                    <a href="Request.jsp">View All</a>

                </div>

                <table class="request-table">

                    <tr>

                        <th>Name</th>

                        <th>Skill</th>

                        <th>Status</th>

                    </tr>
					

<%
List<ExchangeRequestDTO> exchangeList = exchange.getAllRequests();

List<ExchangeRequestDTO> sortedList = exchangeList.stream()
        .filter(e -> e.getSenderId() == user.getUserId())
        .sorted(Comparator.comparing(ExchangeRequestDTO::getRequestDate).reversed())
        .limit(4)
        .collect(Collectors.toList());
%>

<%for(ExchangeRequestDTO e : sortedList){ %>
                    <tr>

                        <td><%=udao.getUserById(e.getReceiverId()).getUser_fname() %></td>

                        <td><%=skill.getSkillById(e.getOfferedSkillId()).getSkillName() %> ↔ <%= skill.getSkillById(e.getRequestedSkillId()).getSkillName() %></td>

                        <td>

                            <span id = <%=e.getStatus().toLowerCase() %> class="status" >

                                <%= e.getStatus() %>

                            </span>

                        </td>

                    </tr>

    <%} %>             

                </table>

            </div>

 

        </div>

    </main>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>