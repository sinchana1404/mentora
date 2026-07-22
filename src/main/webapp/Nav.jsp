<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar</title>
    <style>
        *{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.nav_container{
    width:95%;
    height:85px;
    margin:20px auto;
    padding:0 35px;

    display:flex;
    justify-content:space-between;
    align-items:center;

    background:linear-gradient(135deg,#001B48,#003C8F,#012B69);
    border-radius:18px;

    box-shadow:0 12px 30px rgba(0,0,0,0.2);
}

/* Logo */

.logo_container{
    display:flex;
    align-items:center;
    gap:15px;
}

.logo_container img{
    height:60px;
    width:60px;
    border-radius:50%;
    border:3px solid white;
    object-fit:cover;
    transition:0.3s;
}

.logo_container img:hover{
    transform:scale(1.08);
}

.logo_container h1{
    color:white;
    font-size:30px;
    font-weight:700;
    letter-spacing:2px;
}

/* Navigation */

.content_container{
    display:flex;
    align-items:center;
    gap:35px;
}

.content_container a{
    text-decoration:none;
    color:#d8e8ff;
    font-size:18px;
    font-weight:600;
    position:relative;
    transition:0.3s;
}

.content_container a:hover{
    color:white;
}

.content_container a::after{
    content:"";
    position:absolute;
    left:0;
    bottom:-6px;
    width:0;
    height:3px;
    background:#6dc4ff;
    border-radius:20px;
    transition:0.3s;
}

.content_container a:hover::after{
    width:100%;
}

/* Buttons */

.btn_container{
    display:flex;
    align-items:center;
    gap:15px;
}

.btn_container a{
    text-decoration:none;
    padding:10px 22px;
    border-radius:30px;
    font-size:16px;
    font-weight:600;
    transition:0.3s;
}

/* Login */

.btn_container a:first-child{
    color:white;
    border:2px solid #69bfff;
}

.btn_container a:first-child:hover{
    background:#69bfff;
    color:#002a67;
}

/* Register */

.btn_container a:last-child{
    background:white;
    color:#002a67;
    box-shadow:0 6px 18px rgba(255,255,255,0.3);
}

.btn_container a:last-child:hover{
    background:#69bfff;
    color:white;
    transform:translateY(-2px);
}
    </style>
</head>
<body>
    <div class="nav_container">
        <div class="logo_container">
            <img src="images/logo.jpeg" alt="logo img...">
            <h1>Mentora</h1>
        </div>
        <div class="content_container">

            <a href="LandingPage.jsp">Home</a>
            <a href="About.jsp">About</a>
            <a href = "Home.jsp">Outcomes</a>

        </div>
        <div class="btn_container">
            <a href="Login.jsp">Login</a>
            <a href="Register.jsp">Register</a>
        </div>
    </div>
</body>
</html>