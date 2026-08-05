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
    <!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mentora | Login</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <style>
        * {
            font-family: "Segoe UI", sans-serif;
        }

        body {
            background: #EEF4FF;
            background-image:
                radial-gradient(circle at top, #d8e8ff 0%, transparent 35%),
                radial-gradient(circle at bottom right, #eaf4ff 0%, transparent 30%);
            min-height: 100vh;
        }

        .login-card {
            width: 470px;
            background: #fff;
            border: 1px solid #d8e5ff;
            border-radius: 24px;
            padding: 45px;
            box-shadow: 0 20px 50px rgba(13, 59, 134, .12);
        }

        .logo {
            width: 75px;
            height: 75px;
            object-fit: cover;
            border-radius: 20px;
            box-shadow: 0 12px 25px rgba(13, 59, 134, .18);
        }

        .brand {
            color: #0D3B86;
            font-weight: 800;
            letter-spacing: 1px;
        }

        .welcome {
            color: #1D2B44;
            font-weight: 800;
        }

        .subtitle {
            color: #667791;
        }

        .form-label {
            color: #1D2B44;
            font-weight: 600;
        }

        .input-group-text {
            background: #F5F8FF;
            border: 1px solid #d8e5ff;
            border-right: none;
            border-radius: 16px 0 0 16px;
        }

        .form-control {
            background: #F5F8FF;
            border: 1px solid #d8e5ff;
            border-left: none;
            border-radius: 0 16px 16px 0;
            height: 58px;
        }

        .form-control:focus {
            background: #fff;
            border-color: #0D3B86;
            box-shadow: 0 0 0 .2rem rgba(13, 59, 134, .12);
        }

        .btn-login {
            width: 100%;
            background: linear-gradient(135deg, #0D3B86, #2E7CF7);
            color: white;
            border: none;
            border-radius: 16px;
            padding: 14px;
            font-size: 18px;
            font-weight: 600;
            transition: .3s;
        }

        .btn-login:hover {
            transform: translateY(-2px);
            box-shadow: 0 15px 30px rgba(13, 59, 134, .25);
            color: white;
        }

        .register-link,
        .back-link {
            color: #0D3B86;
            font-weight: 600;
            text-decoration: none;
        }

        .register-link:hover,
        .back-link:hover {
            color: #2E7CF7;
        }

        .forgot {
            color: #667791;
            text-decoration: none;
            font-size: 15px;
        }
        
       
        

        .forgot:hover {
            color: #0D3B86;
        }

        @media(max-width:576px) {
            .login-card {
                width: 95%;
                padding: 35px;
            }
        }
    </style>

</head>

<body>

    <div class="container d-flex flex-column justify-content-center align-items-center min-vh-100">

        <!-- Logo -->

        <div class="text-center mb-5">

            <div class="d-flex justify-content-center align-items-center gap-3 mb-3">

                <img src="images/logo.jpeg" class="logo">

                <h2 class="brand m-0">
                    MENTORA
                </h2>

            </div>

            <h1 class="welcome">Welcome Back 👋</h1>

            <p class="subtitle fs-5">
                Sign in to continue your learning journey
            </p>

        </div>

        <!-- Login Card -->

        <div class="login-card">
        
        <%String success=(String)request.getAttribute("success");%>
        <%if(success!=null) {%>
		<%= success%>
		<%} %>
		
		<%String Failure=(String)request.getAttribute("Failure"); %>
		<%if(Failure!=null){ %>
		<%=Failure %>
		<% } %>
		
            <form action="login" method="post">

                <div class="mb-4">

                    <label class="form-label">Email Address</label>

                    <div class="input-group">

                        <span class="input-group-text">
                            <i class="fa-regular fa-envelope text-primary"></i>
                        </span>

                        <input type="email"
                        		name="mail"
                            class="form-control"
                            placeholder="Enter your email">

                    </div>

                </div>

                <div class="mb-3">

                    <label class="form-label">Password</label>

                    <div class="input-group">

                        <span class="input-group-text">
                            <i class="fa-solid fa-lock text-primary"></i>
                        </span>

                        <input type="password"
                        		name="password"
                            class="form-control"
                            placeholder="Enter your password">

                    </div>

                </div>

                <div class="d-flex justify-content-between align-items-center mb-4">

                    <div class="form-check">

                        <input class="form-check-input" type="checkbox">

                        <label class="form-check-label">
                            Remember me
                        </label>

                    </div>

                    <a href="Forgot.jsp" class="forgot">
                        Forgot Password?
                    </a>
                    

                </div>
                
                

                <button class="btn btn-login mb-4">
                    Sign In
                </button>

                <div class="text-center">

                    <small class="fs-6">

                        Don't have an account?

                        <a href="Register.jsp" class="register-link">
                            Register here
                        </a>

                    </small>

                </div>

            </form>

        </div>

        <div class="mt-4">

            <a href="LandingPage.jsp" class="back-link">
                ← Back to Home
            </a>

        </div>

    </div>

</body>

</html>
</body>
</html>