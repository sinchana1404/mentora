<%@page import="com.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Reset Password | Mentora</title>

<link rel="stylesheet" href="Reset.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

</head>

<body>
<%UserDTO e=(UserDTO)session.getAttribute("user");%>
<div class="container">

    <div class="logo">

        <i class="fa-solid fa-shield-halved"></i>

    </div>

    <h1>Reset Password</h1>

    <p class="subtitle">
        Secure your Mentora account by creating a strong new password.
    </p>
  				<%String success=(String)request.getAttribute("success"); %>
        			<%if(success!=null){%>
        			<h6 align="center" style="color:blue;"><%=success%></h6>
        			<%}%>
                    
                    <%String error=(String)request.getAttribute("reset"); %>
        			<%if(error!=null){%>
        			<h6 align="center" style="color:red;"><%=error%></h6>
        			<%}%>


    <form action="Reset" method="post">

        <label>Email Address</label>

        <div class="input-box">

            <i class="fa-solid fa-envelope icon"></i>

            <input
            type="email"
            name="email"
            placeholder="Enter your registered email"
            required>

        </div>

        <label>Current Password</label>

        <div class="input-box">

            <i class="fa-solid fa-lock icon"></i>

            <input
            type="password"
            id="oldPassword"
            name="currentPassword"
            placeholder="Enter current password"
            required>

            <i class="fa-regular fa-eye eye"
            onclick="togglePassword('oldPassword',this)"></i>

        </div>

        <label>New Password</label>

        <div class="input-box">

            <i class="fa-solid fa-key icon"></i>

            <input
            type="password"
            id="newPassword"
            name="newPassword"
            placeholder="Enter new password"
            required>

            <i class="fa-regular fa-eye eye"
            onclick="togglePassword('newPassword',this)"></i>

        </div>

        <label>Confirm Password</label>

        <div class="input-box">

            <i class="fa-solid fa-key icon"></i>

            <input
            type="password"
            id="confirmPassword"
            name="confirmPassword"
            placeholder="Confirm new password"
            required>

            <i class="fa-regular fa-eye eye"
            onclick="togglePassword('confirmPassword',this)"></i>

        </div>

        <button type="submit">

            <i class="fa-solid fa-rotate"></i>

            Update Password

        </button>

        <a href="DashBoard.jsp" class="back">

            <i class="fa-solid fa-arrow-left"></i>

            Back 

        </a>

    </form>

</div>

<script>

function togglePassword(id,icon){

let input=document.getElementById(id);

if(input.type==="password"){

input.type="text";
icon.classList.replace("fa-eye","fa-eye-slash");

}else{

input.type="password";
icon.classList.replace("fa-eye-slash","fa-eye");

}

}

</script>

</body>

</html>