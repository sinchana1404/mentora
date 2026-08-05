<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Forgot Password | Mentora</title>

<link rel="stylesheet" href="Forgot.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

</head>

<body>

<div class="container">

    <div class="lock">

        <i class="fa-solid fa-lock"></i>

    </div>

    <h1>Forgot Password</h1>

    <p class="subtitle">
        Reset your password to continue your learning journey with Mentora.
    </p>
    
    <%String success=(String)request.getAttribute("success");%>
        <%if(success!=null){%>
        	<h6 style="color:blue;"><%=success%></h6>
        <%}%>
        
        
        
        <%String error=(String)request.getAttribute("error");%>
        <%if(error!=null){%>
        	<h6 style="color:red;"><%=error%></h6>
        <%}%>

    <form action="Forgot" method="post">

        <label>Email Address</label>

        <div class="input-box">

            <i class="fa-solid fa-envelope icon"></i>

            <input
            type="email"
            name="email"
            placeholder="Enter your registered email"
            required>

        </div>

        <label>New Password</label>

        <div class="input-box">

            <i class="fa-solid fa-lock icon"></i>

            <input
            type="password"
            name="password"
            placeholder="Enter new password"
            required>

            <i class="fa-regular fa-eye eye"></i>

        </div>

        <label>Confirm Password</label>

        <div class="input-box">

            <i class="fa-solid fa-key icon"></i>

            <input
            type="password"
            name="confirmPassword"
            placeholder="Confirm your password"
            required>

            <i class="fa-regular fa-eye eye"></i>

        </div>

        

        <button type="submit">
            Update Password
        </button>

        <a href="Login.jsp" class="back">
            ← Back to Login
        </a>

    </form>

</div>

</body>

</html>