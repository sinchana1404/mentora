<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Explore Skills | Mentora</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="Explore.css">

</head>

<body>


<div class="e_container">
        
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

                <i class="bi bi-box-arrow-right"></i>

                 <a href = "Logout" class = "sidebar_a" style = "text-decoration: none; color:white;">Logout</a>

            </li>

        </ul>

    </aside>

   <div class = "main">
    <div class="page-header">

        <h2>Explore Skills</h2>

        <p>Discover skilled people and start exchanging knowledge.</p>

    </div>

    <!-- Search -->

  <form action = "searchpage" method = "post">
    <div class="filter-card">

        <div class="row g-3">

            <div class="col-lg-5">

                <input type="text"
                       class="form-control"
                       placeholder="Search by skills or category" 
                       name = "search">

            </div>

            <div class="col-lg-3">

                <select class="form-select" name = "type">

                    <option value = " ">choose search type</option>

                    <option value = "skill">skill name</option>

                    <option value = "category">category</option>

                </select>

            </div>

            <div class="col-lg-2">

                <select class="form-select" name = "prof">

                    <option value = "begginer">Beginner</option>

                    <option value = "intermediate">Intermediate</option>

                    <option value = "advanced">Advanced</option>

                </select>

            </div>

            <div class="col-lg-2 d-grid">

                <button class="btn search-btn" type = "submit">

                    <i class="bi bi-search"></i>

                    Search

                </button>

            </div>

        </div>

    </div>
  
  </form>
    <!-- Profile Card -->

    <div class="profile-card">

        <div class="profile-top">

            <div class="profile-info">

                <div class="avatar">

                    R

                </div>

                <div>

                    <h4>Rahul Kumar</h4>

                    <span>Java Full Stack Developer</span>

                </div>

            </div>

            <span class="level-badge">Advanced</span>

        </div>

        <div class="row mt-4">

            <div class="col-md-6">

                <div class="skill-box">

                    <h6>Can Teach</h6>

                    <div class="tags">

                        <span>Java</span>

                        <span>Spring Boot</span>

                        <span>JSP</span>

                        <span>Hibernate</span>

                    </div>

                </div>

            </div>

            <div class="col-md-6">

                <div class="skill-box">

                    <h6>Wants To Learn</h6>

                    <div class="tags">

                        <span>React</span>

                        <span>Angular</span>

                        <span>Node.js</span>

                    </div>

                </div>

            </div>

        </div>

        <div class="actions">

            <button class="btn profile-btn">

                <i class="bi bi-person"></i>

                View Profile

            </button>

            <button class="btn request-btn">

                <i class="bi bi-send"></i>

                Send Request

            </button>

        </div>

    </div>

    <!-- Card 2 -->

   
</div>

</body>

</html>