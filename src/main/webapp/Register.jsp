<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Mentora | Register</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <!-- CSS -->
    <link rel="stylesheet" href="register.css">

    <style>
        *{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{

    min-height:100vh;

    display:flex;

    justify-content:center;

    align-items:center;

    padding:40px 15px;

    background:#EEF4FF;

    background-image:
    radial-gradient(circle at top,#d9e8ff 0%,transparent 35%),
    radial-gradient(circle at bottom right,#eaf4ff 0%,transparent 30%);

}

/* Container */

.container-box{

    width:100%;

    max-width:560px;

}

/* Logo */

.logo{

    display:flex;

    justify-content:center;

    align-items:center;

    gap:15px;

    margin-bottom:30px;

}

.logo img{

    width:72px;

    height:72px;

    object-fit:cover;

    border-radius:18px;

    box-shadow:0 10px 25px rgba(13,59,134,.15);

}

.logo h1{

    color:#0D3B86;

    font-size:42px;

    font-weight:800;

    margin:0;

}

/* Card */

.card{

    background:#fff;

    border:1px solid #d8e5ff;

    border-radius:24px;

    padding:40px;

    box-shadow:0 20px 50px rgba(13,59,134,.12);

}

/* Heading */

.card h2{

    text-align:center;

    color:#1D2B44;

    font-size:36px;

    font-weight:800;

    margin-bottom:10px;

}

.subtitle{

    text-align:center;

    color:#667791;

    margin-bottom:35px;

    font-size:17px;

}

/* Inputs */

.input-icon{

    position:relative;

    margin-bottom:24px;

}

.input-icon label{

    display:block;

    color:#1D2B44;

    font-weight:600;

    margin-bottom:8px;

}

.input-icon i{

    position:absolute;

    top:47px;

    left:16px;

    color:#0D3B86;

    font-size:15px;

}

.form-control{

    height:56px;

    border-radius:16px;

    padding-left:45px;

    background:#F5F8FF;

    border:1px solid #d8e5ff;

}

textarea.form-control{

    height:120px;

    padding-top:16px;

    resize:none;

}

.form-control:focus{

    background:#fff;

    border-color:#0D3B86;

    box-shadow:0 0 0 .2rem rgba(13,59,134,.12);

}

/* Button */

.btn-custom{

    width:100%;

    height:56px;

    border:none;

    border-radius:16px;

    background:linear-gradient(135deg,#0D3B86,#2E7CF7);

    color:#fff;

    font-size:18px;

    font-weight:600;

    transition:.3s;

}

.btn-custom:hover{

    color:#fff;

    transform:translateY(-2px);

    box-shadow:0 15px 30px rgba(13,59,134,.25);

}

/* Bottom */

.bottom-text{

    text-align:center;

    margin-top:28px;

    color:#667791;

}

.bottom-text a{

    color:#0D3B86;

    text-decoration:none;

    font-weight:600;

}

.bottom-text a:hover{

    color:#2E7CF7;

}

/* Back */

.back-home{

    text-align:center;

    margin-top:25px;

}

.back-home a{

    color:#0D3B86;

    text-decoration:none;

    font-weight:600;

}

.back-home a:hover{

    color:#2E7CF7;

}

/* Responsive */

@media(max-width:576px){

.card{

padding:30px;

}

.logo h1{

font-size:34px;

}

.card h2{

font-size:30px;

}

}
    </style>

</head>

<body>

<div class="container-box">

    <!-- Logo -->

    <div class="logo">

        <img src="images/logo.jpeg" alt="Mentora Logo">

        <h1>MENTORA</h1>

    </div>

    <!-- Register Card -->

    <div class="card">

        <h2>Create Your Account</h2>

        <p class="subtitle">
            Join the community and start exchanging skills
        </p>
        
        <% String success=(String)request.getAttribute("success");%>
        <% if(success!=null){ %>
        <%="Registration success"%>
        <% } %>	
        
        <% String failure=(String)request.getAttribute("failure");%>
        <% if(failure!=null){ %>
        <%="Registration failed"%>
        <% } %>	

        <form action = "register" method = "post">

            <!-- Name -->

            <div class="input-icon">

                <label>First Name</label>

                <i class="fa fa-user"></i>

                <input
                    type="text"
                    class="form-control"
                    name="fname"
                    placeholder="Enter your first name">

            </div>
            <div class="input-icon">

                <label>Last Name</label>

                <i class="fa fa-user"></i>

                <input
                    type="text"
                    class="form-control"
                    name="lname"
                    placeholder="Enter your last name">

            </div>

            <!-- Email -->

            <div class="input-icon">

                <label>Email Address</label>

                <i class="fa fa-envelope"></i>

                <input
                    type="email"
                    class="form-control"
                    name="mail"
                    placeholder="Enter your email">

            </div>

            <!-- Password -->

            <div class="input-icon">

                <label>Password</label>

                <i class="fa fa-lock"></i>

                <input
                    type="password"
                    class="form-control"
                    name="password"
                    placeholder="Create a strong password">

            </div>

            <!-- Phone -->

            <div class="input-icon">

                <label>Phone Number</label>

                <i class="fa fa-phone"></i>

                <input
                    type="text"
                    class="form-control"
                    name="phone"
                    placeholder="+91 1234567890">

            </div>

            <!-- Bio -->

            <div class="input-icon">

                <label>Bio (Optional)</label>

                <i class="fa fa-user-pen"></i>

                <textarea
                    class="form-control"
                    name="bio"
                    placeholder="Tell the community about yourself..."></textarea>

            </div>

            <button class="btn btn-custom mt-2">

                Create Account

            </button>

        </form>

        <div class="bottom-text">

            Already have an account?

            <a href="Login.jsp">

                Sign In

            </a>

        </div>

    </div>

    <div class="back-home">

        <a href="index.html">

            <i class="fa fa-arrow-left"></i>

            Back to Home

        </a>

    </div>

</div>

</body>

</html>
</body>
</html>