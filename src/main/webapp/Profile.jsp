<%@page import="com.dto.UserDTO"%>
<%@page import="com.dao.inf.UserSkillDAOINF"%>
<%@page import="com.dao.imp.UserSkillDAOImpl"%>
<%@page import="com.dao.inf.LearningInterestDAOINF"%>
<%@page import="com.dao.imp.LearningInterestDAOImpl"%>
<%@page import="com.dao.inf.ExchangeRequestDAOINF"%>
<%@page import="com.dao.imp.ExchangeRequestDAOImpl"%>

<%@page import="com.dao.inf.SkillDAOINF"%>
<%@page import="com.dao.imp.SkillDAOImpl"%>

<%@page import="com.dto.UserSkillDTO"%>
<%@page import="com.dto.LearningInterestDTO"%>

<%@page import="java.util.List"%>

<%
UserDTO user=(UserDTO)session.getAttribute("user");

UserSkillDAOINF userSkillDAO=new UserSkillDAOImpl();
LearningInterestDAOINF goalDAO=new LearningInterestDAOImpl();
ExchangeRequestDAOINF requestDAO=new ExchangeRequestDAOImpl();
SkillDAOINF skillDAO=new SkillDAOImpl();

List<UserSkillDTO> skills=userSkillDAO.getUserSkills(user.getUserId());
List<LearningInterestDTO> goals=goalDAO.getLearningInterests(user.getUserId());
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>My Profile | Mentora</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="Profile.css">

</head>

<body>

<% UserDTO users = (UserDTO)session.getAttribute("user"); %>
<% if(user==null){ %>
<% request.setAttribute("Failure", "session already expired"); 
request.getRequestDispatcher("Login.jsp").forward(request,response);%>
<% } else {%>
<div class="dashboard">

    <!-- Sidebar -->

    <aside class="sidebar">

        <div class="logo">
            <img src="images/logo.jpeg">
            <h2>Mentora</h2>
        </div>

        <ul>

            <li>
                <a href="DashBoard.jsp">
                    <i class="bi bi-grid"></i>
                    Dashboard
                </a>
            </li>

            <li>
                <a href="Explore.jsp">
                    <i class="bi bi-search"></i>
                    Explore Skills
                </a>
            </li>

            <li>
                <a href="Requests.jsp">
                    <i class="bi bi-send"></i>
                    My Requests
                </a>
            </li>

            <li class="active">
                <a href="Profile.jsp">
                    <i class="bi bi-person-circle"></i>
                    Profile
                </a>
            </li>

            <li>
                <a href="Logout">
                    <i class="bi bi-box-arrow-right"></i>
                    Logout
                </a>
            </li>

        </ul>

    </aside>

    <!-- Main Content -->

    <div class="main-content">

        <!-- Header -->

        <div class="profile-header">

            <div class="profile-image">

               <h1><%= user.getUser_fname().toUpperCase().charAt(0) %></h1>

            </div>

            <h2 style = "text-transform :capitalize;">
                <%=user.getUser_fname()%> <%=user.getUser_lname()%>
            </h2>

            <p>Mentora Skill Exchange Member</p>

        </div>

        <!-- About -->

        <div class="profile-section">

            <h3>About Me</h3>

            <div class="about-box">

                <%=user.getBio()==null?"No Bio Added":user.getBio()%>

            </div>

        </div>

        <!-- Personal Information -->

        <div class="profile-section">

            <h3>Personal Information</h3>

            <div class="info-grid">

                <div class="info-card">
                    <label>First Name</label>
                    <p><%=user.getUser_fname()%></p>
                </div>

                <div class="info-card">
                    <label>Last Name</label>
                    <p><%=user.getUser_lname()%></p>
                </div>

                <div class="info-card">
                    <label>Email</label>
                    <p><%=user.getEmail()%></p>
                </div>

                <div class="info-card">
                    <label>Phone</label>
                    <p><%=user.getPhone_number()%></p>
                </div>

                <div class="info-card">
                    <label>City</label>
                    <p><%=user.getCity()==null?"Not Available":user.getCity()%></p>
                </div>

                <div class="info-card">
                    <label>Joined</label>
                    <p><%=user.getCreate_at()%></p>
                </div>

            </div>

        </div>

        <!-- Skills -->

        <!-- Skills -->

<div class="profile-section">

    <h3 class="section-title">My Skills</h3>

    <div class="badge-container">

    <% if(skills.isEmpty()) { %>

        <p class="empty-message">
            <i class="bi bi-info-circle"></i>
            No skills added yet.
        </p>

    <% } else { %>

        <% for(UserSkillDTO skill : skills){ %>

            <span class="skill-badge">

                <%= skillDAO.getSkillById(skill.getSkillId()).getSkillName() %>

            </span>

        <% } %>

    <% } %>

    </div>

</div>

        <!-- Learning Goals -->

<div class="profile-section">

    <h3 class="section-title">Learning Goals</h3>

    <div class="goal-container">

    <% if(goals.isEmpty()) { %>

        <p class="empty-message">
            <i class="bi bi-info-circle"></i>
            No learning goals added yet.
        </p>

    <% } else { %>

        <% for(LearningInterestDTO goal : goals){ %>

            <div class="goal-card">

                <i class="bi bi-check-circle-fill"></i>

                <%= skillDAO.getSkillById(goal.getSkillId()).getSkillName() %>

            </div>

        <% } %>

    <% } %>

    </div>

</div>

        <!-- Statistics -->

      <div class="profile-section">

    <h3 class="section-title">Account Statistics</h3>

    <div class="stats">

        <div class="stat-card">

            <h2><%=skills.size()%></h2>

            <p>Skills Added</p>

        </div>

        <div class="stat-card">

            <h2><%=goals.size()%></h2>

            <p>Learning Goals</p>

        </div>

        <div class="stat-card">

            <h2><%=requestDAO.getAllRequests().size()%></h2>

            <p>Exchange Requests</p>

        </div>

    </div>

</div>

<br>
        <!-- Buttons -->

        <div class="button-area">

            <a href="update.jsp" class="btn btn-primary">

                <i class="bi bi-pencil-square"></i>

                Edit Profile

            </a>


        </div>
 

    </div>

</div>
<%} %>
</body>
</html>