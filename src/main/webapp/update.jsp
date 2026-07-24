```jsp
<%@page import="com.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
UserDTO user = (UserDTO) session.getAttribute("user");

if(user == null){
    response.sendRedirect("Login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Update Profile | Mentora</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="UpdateProfile.css">

</head>

<body>

<div class="e_container">

    <!-- Sidebar -->
    <aside class="sidebar">

        <div class="logo">
            <img src="images/logo.jpeg" alt="Mentora Logo">
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

            <li>
                <i class="bi bi-search"></i>
                <a href="Explore.jsp"
                   class="sidebar_a"
                   style="text-decoration:none;color:white;">
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

            <li class="active">
                <i class="bi bi-person"></i>
                <a href="Profile.jsp"
                   class="sidebar_a"
                   style="text-decoration:none;color:#0D3B86;">
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

    <!-- Main Content -->
    <div class="main">

        <div class="page-header">

            <h2>Update Profile</h2>

            <p>Keep your profile information up to date.</p>

        </div>

        <div class="profile-card">

            <div class="text-center mb-4">

                <div class="profile-avatar">

                    <%= user.getUser_fname().toUpperCase().charAt(0) %>

                </div>

                <h4 class="mt-3">

                    <%= user.getUser_fname() %>
                    <%= user.getUser_lname() %>

                </h4>

                <p class="text-muted">

                    <%= user.getEmail() %>

                </p>

            </div>

            <form action="UpdateProfile" method="post">

                <input type="hidden"
                       name="userId"
                       value="<%= user.getUserId() %>">

                <div class="row">

                    <div class="col-md-6 mb-3">

                        <label class="form-label">
                            First Name
                        </label>

                        <input type="text"
                               class="form-control"
                               name="fname"
                               value="<%= user.getUser_fname() %>"
                               required>

                    </div>

                    <div class="col-md-6 mb-3">

                        <label class="form-label">
                            Last Name
                        </label>

                        <input type="text"
                               class="form-control"
                               name="lname"
                               value="<%= user.getUser_lname() %>"
                               required>

                    </div>

                </div>

                <div class="mb-3">

                    <label class="form-label">
                        Email
                    </label>

                    <input type="email"
                           class="form-control"
                           name="email"
                           value="<%= user.getEmail() %>"
                           required>

                </div>

                <div class="row">

                    <div class="col-md-6 mb-3">

                        <label class="form-label">
                            Phone Number
                        </label>

                        <input type="text"
                               class="form-control"
                               name="phone"
                               value="<%= user.getPhone_number() %>"
                               required>

                    </div>

                    <div class="col-md-6 mb-3">

                        <label class="form-label">
                            City
                        </label>

                        <input type="text"
                               class="form-control"
                               name="city"
                               value="<%= user.getCity() == null ? "" : user.getCity() %>">

                    </div>

                </div>

                <div class="mb-3">

                    <label class="form-label">
                        Bio
                    </label>

                    <textarea
                        class="form-control"
                        rows="4"
                        name="bio"><%= user.getBio() == null ? "" : user.getBio() %></textarea>

                </div>

                <div class="row">

                    <div class="col-md-6 mb-3">

                        <label class="form-label">
                            Password
                        </label>

                        <input type="password"
                               class="form-control"
                               name="password"
                               value="<%= user.getPassword() %>">

                    </div>

                    <div class="col-md-6 mb-3">

                        <label class="form-label">
                            Confirm Password
                        </label>

                        <input type="password"
                               class="form-control"
                               name="confirmPassword"
                               value="<%= user.getPassword() %>">

                    </div>

                </div>

                <div class="text-center mt-4">

                    <button type="submit"
                            class="btn save-btn">

                        <i class="bi bi-check-circle-fill"></i>

                        Save Changes

                    </button>

                </div>

            </form>

        </div>

    </div>

</div>

</body>
</html>
```
