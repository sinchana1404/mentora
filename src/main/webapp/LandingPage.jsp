<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mentora Carousel</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }

        body{
            background:#eef4ff;
            font-family:'Segoe UI',sans-serif;
        }

        .hero{

            width:90%;
            margin:60px auto;

            display:flex;
            justify-content:space-between;
            align-items:center;
            gap:70px;

        }

        .left{

            flex:1;

        }

        .left h1{

            font-size:65px;
            font-weight:800;
            color:#1d2b44;
            line-height:1.15;

        }

        .left h1 span{

            color:#1d5fe8;

        }

        .left p{

            margin-top:30px;
            font-size:24px;
            color:#60718d;
            line-height:1.8;

        }

        .buttons{

            margin-top:45px;
            display:flex;
            gap:25px;
            align-items:center;

        }

        .btn1{

            background:#0d3b86;
            color:white;
            padding:18px 38px;
            border-radius:15px;
            text-decoration:none;
            font-size:20px;
            font-weight:600;

        }

        .btn2{

            color:#0d3b86;
            text-decoration:none;
            font-size:20px;
            font-weight:600;

        }

        .stats{

            display:flex;
            gap:60px;
            margin-top:70px;

        }

        .stats h2{

            font-size:45px;
            color:#1d2b44;
            font-weight:800;

        }

        .stats p{

            margin-top:5px;
            font-size:20px;

        }

        .right{

            flex:1;
            display:flex;
            justify-content:center;

        }

        #heroCarousel{

            width:100%;
            max-width:600px;

        }

        #heroCarousel img{

            width:100%;
            height:520px;
            object-fit:cover;

            border-radius:25px;

            box-shadow:0 20px 40px rgba(13,59,134,.18);

        }

        /* Hide Bootstrap Controls */

        .carousel-control-prev,
        .carousel-control-next,
        .carousel-indicators{

            display:none;

        }

        @media(max-width:992px){

            .hero{

                flex-direction:column;
                text-align:center;

            }

            .buttons{

                justify-content:center;

            }

            .stats{

                justify-content:center;
                flex-wrap:wrap;

            }

        }

    </style>

</head>
<body>

<%@include file="Nav.jsp"%>

<section class="hero">


	
    <div class="left">

        <h1>
            Exchange Skills,<br>
            <span>Grow Together</span>
        </h1>

        <p>

            Connect with people who want to learn what you know and teach what you want to learn.
            No money. Just skills.

        </p>

        <div class="buttons">

            <a href="Register.jsp" class="btn1">Get Started →</a>

            <a href="working.jsp" class="btn2">How it works →</a>

        </div>

        <div class="stats">

            <div>

                <h2>2,400+</h2>
                <p>Members</p>

            </div>

            <div>

                <h2>180+</h2>
                <p>Skills</p>

            </div>

            <div>

                <h2>5,600+</h2>
                <p>Exchanges</p>

            </div>

        </div>

    </div>

    <div class="right">

        <div id="heroCarousel"
             class="carousel slide carousel-fade"
             data-bs-ride="carousel"
             data-bs-interval="5000"
             data-bs-pause="false"
             data-bs-touch="true">

            <div class="carousel-inner">

                <div class="carousel-item active">
                    <img src="images/hero1.jpeg" alt="">
                </div>

                <div class="carousel-item">
                    <img src="images/hero2.jpeg" alt="">
                </div>

                <div class="carousel-item">
                    <img src="images/hero3.jpeg" alt="">
                </div>

                <div class="carousel-item">
                    <img src="images/hero4.jpeg" alt="">
                </div>

                <div class="carousel-item">
                    <img src="images/hero5.jpeg" alt="">
                </div>

            </div>

        </div>

    </div>

</section>



<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>