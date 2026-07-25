<%@page import="com.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Send Request | Mentora</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="SendRequest.css">

</head>

<body>

<div class="e_container">

    <!-- Sidebar -->

    <aside class="sidebar">

        <div class="logo">

            <img src="images/logo.jpeg">

            <h2>Mentora</h2>

        </div>

        <ul>

            <li>

                <i class="bi bi-grid"></i>

                <a href="DashBoard.jsp"
                class="sidebar_a"
                style="text-decoration:none;color:white;">
                    Dashboard
                </a>

            </li>

            <li class="active">

                <i class="bi bi-search"></i>

                <a href="Explore.jsp"
                class="sidebar_a"
                style="text-decoration:none;color:#0D3B86;">
                    Explore Skills
                </a>

            </li>

            <li>

                <i class="bi bi-send"></i>

                <a href="Requests.jsp"
                class="sidebar_a"
                style="text-decoration:none;color:white;">
                    My Requests
                </a>

            </li>

            <li>

                <i class="bi bi-person"></i>

                <a href="Profile.jsp"
                class="sidebar_a"
                style="text-decoration:none;color:white;">
                    Profile
                </a>

            </li>

            <li>

                <i class="bi bi-box-arrow-right"></i>

                <a href="Logout"
                class="sidebar_a"
                style="text-decoration:none;color:white;">
                    Logout
                </a>

            </li>

        </ul>

    </aside>

    <!-- Main -->

<%
UserDTO u = (UserDTO) session.getAttribute("user");
String receiverId = (String) request.getAttribute("receiverId");
int rid = Integer.parseInt(receiverId);
%>
    <div class="main">

        <div class="page-header">

            <h2>Send Skill Exchange Request</h2>

            <p>
                Send a learning request to
                <strong>${receiverName}</strong>
            </p>

        </div>

        <div class="request-card">

            <form action="SubmitRequest" method="post">

                <!-- Hidden Fields -->

                <input type="hidden"
                       name="senderId"
                       value="<%= u.getUserId()%>">

                <input type="hidden"
                       name="receiverId"
                       value="<%=receiverId%>">


                <!-- Requested Skill -->

                <div class="mb-4">

                    <label class="form-label">

                        Requested Skill

                    </label>

                    <input type="text"
                           class="form-control"
                           name = "requestedSkill">

                </div>

                <!-- Offered Skill -->

                <div class="mb-4">

                    <label class="form-label">

                        Your Offered Skill

                    </label>

                    <input type="text"
                           class="form-control"
                           name = "offeredSkill">

                </div>

                <!-- Message -->

                <div class="mb-4">

                    <label class="form-label">

                        Message

                    </label>

                    <textarea
                        class="form-control"
                        rows="5"
                        name="message"
                        placeholder="Introduce yourself and explain why you'd like to exchange skills."
                        required></textarea>

                </div>

                <!-- Buttons -->

                <div class="actions">

                    <a href="Explore.jsp"
                       class="btn cancel-btn">

                        Cancel

                    </a>

                    <button
                        type="submit"
                        class="btn send-btn">

                        <i class="bi bi-send-fill"></i>

                        Send Request

                    </button>

                </div>

            </form>

        </div>

    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>