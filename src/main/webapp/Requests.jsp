<%@page import="java.util.stream.Collectors"%>
<%@page import="com.dto.ExchangeRequestDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.imp.UserDAOIMP"%>
<%@page import="com.dao.inf.UserDAOINF"%>
<%@page import="com.dao.imp.SkillDAOImpl"%>
<%@page import="com.dao.inf.SkillDAOINF"%>
<%@page import="com.dao.imp.ExchangeRequestDAOImpl"%>
<%@page import="com.dao.inf.ExchangeRequestDAOINF"%>
<%@page import="com.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My Requests | Mentora</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="Requests.css">

</head>

<body>

<% UserDTO user= (UserDTO)session.getAttribute("user"); %>
<% if(user==null){ %>
<% request.setAttribute("Failure", "session already expired") ;
request.getRequestDispatcher("Login.jsp").forward(request, response);%>
<%} else{ %>

<div class="e_container">

    <!-- Sidebar -->
<% ExchangeRequestDAOINF edao = new ExchangeRequestDAOImpl(); %>
<% SkillDAOINF sdao = new SkillDAOImpl(); %>
<%UserDAOINF udao = new UserDAOIMP(); %>
    <aside class="sidebar">

        <div class="logo">

            <img src="images/logo.jpeg">

            <h2>Mentora</h2>

        </div>

        <ul>

            <li>

                <i class="bi bi-grid"></i>

                <a href="DashBoard.jsp" class="sidebar_a"
                style="text-decoration:none;color:white;">
                    Dashboard
                </a>

            </li>

            <li>

                <i class="bi bi-search"></i>

                <a href="Explore.jsp" class="sidebar_a"
                style="text-decoration:none;color:white;">
                    Explore Skills
                </a>

            </li>

            <li class="active">

                <i class="bi bi-send"></i>

                <a href="Requests.jsp" class="sidebar_a"
                style="text-decoration:none;color:#0D3B86;">
                    My Requests
                </a>

            </li>

            <li>

                <i class="bi bi-person"></i>

                <a href="Profile.jsp" class="sidebar_a"
                style="text-decoration:none;color:white;">
                    Profile
                </a>

            </li>

            <li>

                <i class="bi bi-box-arrow-right"></i>

                <a href="Logout" class="sidebar_a"
                style="text-decoration:none;color:white;">
                    Logout
                </a>

            </li>

        </ul>

    </aside>

    <!-- Main -->

    <div class="main">

        <div class="page-header">

            <h2>My Requests</h2>

            <p>Track your sent and received skill exchange requests.</p>

        </div>

        <!-- Tabs -->

        <ul class="nav nav-pills request-tabs mb-4">

            <li class="nav-item">

                <button class="nav-link active"
                        data-bs-toggle="pill"
                        data-bs-target="#sent">

                    Sent Requests

                </button>

            </li>

            <li class="nav-item ms-3">

                <button class="nav-link"
                        data-bs-toggle="pill"
                        data-bs-target="#received">

                    Received Requests

                </button>

            </li>

        </ul>

        <div class="tab-content">

            <!-- ===================================================== -->
            <!-- SENT REQUESTS -->
            <!-- ===================================================== -->

            <div class="tab-pane fade show active"
                 id="sent">

                <!-- Card -->
			<% List<ExchangeRequestDTO> li= edao.getAllRequests();
			li = li.stream().filter(e->e.getSenderId()==user.getUserId()).collect(Collectors.toList());
			for(ExchangeRequestDTO e: li){
			%>
                <div class="request-card">

                    <div class="request-header">

                        <div class="user-info">

                            <div class="avatar">

                                <%= udao.getUserById(e.getSenderId()).getUser_fname().toUpperCase().charAt(0) %>

                            </div>

                            <div>

                                <h5><%= udao.getUserById(e.getSenderId()).getUser_fname()%> <%=  udao.getUserById(e.getSenderId()).getUser_lname()%></h5>

                            </div>

                        </div>

                        <span class="status  <%= e.getStatus() %>">

                            <%= e.getStatus() %>

                        </span>

                    </div>

                    <div class="row mt-4">

                        <div class="col-md-6">

                            <div class="skill-box">

                                <h6>Can Teach</h6>

                                <div class="tags">

                                    <span><%= sdao.getSkillById(e.getOfferedSkillId()).getSkillName() %></span>

                                </div>

                            </div>

                        </div>

                        <div class="col-md-6">

                            <div class="skill-box">

                                <h6>Wants To Learn</h6>

                                <div class="tags">

                                    <span><%=sdao.getSkillById(e.getRequestedSkillId()).getSkillName() %></span>


                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="request-footer">

                        <small>

                         <%= e.getRequestDate() %>

                        </small>

                        <div class="actions">

                            <form action = "Cancel" method = "post">
                            <input type= "hidden" name = "cancel" value = "<%= e.getRequestId()%>"/>
                            <button class="btn cancel-btn" type = "submit">

                                <i class="bi bi-x-circle"></i>

                                Cancel

                            </button>
                            
                            </form>
                        </div>

                    </div>

                </div>
                
                <%} %>

            </div>

            <!-- ===================================================== -->
            <!-- RECEIVED REQUESTS -->
            <!-- ===================================================== -->

<% List<ExchangeRequestDTO> rLi= edao.getAllRequests();
			rLi = rLi.stream().filter(e->e.getReceiverId()==user.getUserId()).collect(Collectors.toList());
			for(ExchangeRequestDTO r: rLi){
			%>

            <div class="tab-pane fade"
                 id="received">

                <div class="request-card">

                    <div class="request-header">

                        <div class="user-info">

                            <div class="avatar blue">

                                <%= udao.getUserById(r.getSenderId()).getUser_fname().toUpperCase().charAt(0) %>

                            </div>

                            <div>

                                <h5> <%= udao.getUserById(r.getSenderId()).getUser_fname() + " "+ udao.getUserById(r.getSenderId()).getUser_lname() %></h5>

                            </div>

                        </div>

                        <span class="status <%= r.getStatus() %> ">

                            <%= r.getStatus() %>

                        </span>

                    </div>

                    <div class="row mt-4">

                        <div class="col-md-6">

                            <div class="skill-box">

                                <h6>Can Teach</h6>

                                <div class="tags">

                                    <span><%= sdao.getSkillById(r.getOfferedSkillId()).getSkillName() %></span>


                                </div>

                            </div>

                        </div>

                        <div class="col-md-6">

                            <div class="skill-box">

                                <h6>Wants To Learn</h6>

                                <div class="tags">

                                    <span><%= sdao.getSkillById(r.getRequestedSkillId()).getSkillName() %></span>

    

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="request-footer">

                        <small>

                          <%= r.getRequestDate() %>

                        </small>

                        <div class="actions">


                            <form action = "Accept" method = "post">
                            <button class="btn accept-btn" type = "submit">

                                <i class="bi bi-check-circle"></i>
                               <input type= "hidden" name = "accept" value = "<%= r.getRequestId()%>"/>
									
                                Accept

                            </button>
							</form>
							<form action = "Reject" method = "post">
                            <button class="btn decline-btn" type = "submit">

                                <i class="bi bi-x-circle"></i>
								
								  <input type= "hidden" name = "reject" value = "<%= r.getRequestId()%>"/>
                                Decline

                            </button>
                            </form>

                        </div>

                    </div>

                </div>

            </div>
            
            <%} %>

        </div>

    </div>

</div>
<%} %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>