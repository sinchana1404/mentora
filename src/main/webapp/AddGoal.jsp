<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Add Learning Goal | Mentora</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="AddGoals.css">

</head>

<body>

<div class = "e_container">
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
<div class="goal-box">

    <h2 class="title">Add Learning Goal</h2>

    <p class="subtitle">
        Add a new skill you want to learn.
    </p>

    <form action="AddGoal" method="post">

        <div class="mb-3">

            <label class="form-label">Skill Name</label>

            <input type="text"
                   name="skillName"
                   class="form-control"
                   placeholder="Enter skill name"
                   required>

        </div>

        <div class="mb-3">

            <label class="form-label">Category</label>

            <input type="text"
                   name="category"
                   class="form-control"
                   placeholder="Enter category"
                   required>

        </div>

  
					<div class="d-flex justify-content-end">

						<a href="DashBoard.jsp"
							class="btn btn-outline-secondary btn-cancel me-3"> Cancel </a>

						<button type="submit" class="btn btn-save">Add Goal</button>

					</div>

    </form>

</div>
</div>
</div>



</body>
</html>