<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Why Mentora</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
*{margin:0;padding:0;box-sizing:border-box}
body{
    font-family:Segoe UI,sans-serif;
    background:#eef4ff;
}
.why{
    padding:20px ;
    position:relative;
    overflow:hidden;   /* Add this */
    z-index:1;
}
.title{
    text-align:center;
    font-size:52px;
    font-weight:800;
    color:#16274c;
}
.title span{color:#0D3B86;}
.subtitle{
    max-width:760px;
    margin:18px auto 60px;
    text-align:center;
    color:#64748b;
    font-size:20px;
    line-height:1.8;
}
.feature-card{
    background:#fff;
    border:1px solid #d9e5ff;
    border-radius:22px;
    padding:40px;
    min-height:260px;
    transition:.35s;
}
.feature-card:hover{
    transform:translateY(-8px);
    box-shadow:0 18px 45px rgba(13,59,134,.15);
    border-color:#0D3B86;
}
.icon-box{
    width:80px;
    height:80px;
    border-radius:20px;
    display:flex;
    justify-content:center;
    align-items:center;
    font-size:34px;
    margin-bottom:25px;
}
.blue{background:#eaf2ff;color:#0D6EFD;}
.red{background:#ffecef;color:#ef4444;}
.purple{background:#f3eaff;color:#8b5cf6;}
.orange{background:#fff3e6;color:#f97316;}
.cyan{background:#e9fbff;color:#0891b2;}
.green{background:#e8fbf1;color:#10b981;}
.feature-card h4{
    font-size:28px;
    color:#16274c;
    margin-bottom:15px;
    font-weight:700;
}
.feature-card p{
    color:#64748b;
    font-size:18px;
    line-height:1.8;
    margin:0;
}
@media(max-width:991px){
.title{font-size:40px}
.subtitle{font-size:18px}
}
</style>
</head>
<body>

<%@include file="Nav.jsp"%>
<section class="why">
<div class="container">

<h2 class="title">Why <span>Mentora?</span></h2>

<p class="subtitle">
A smarter way to learn by teaching, sharing, and growing together through skill exchange.
</p>

<div class="row g-4">

<div class="col-lg-6">
<div class="feature-card">
<div class="icon-box blue"><i class="bi bi-people-fill"></i></div>
<h4>Community Powered</h4>
<p>Connect with learners and mentors from diverse backgrounds who are passionate about sharing knowledge and helping each other grow.</p>
</div>
</div>

<div class="col-lg-6">
<div class="feature-card">
<div class="icon-box red"><i class="bi bi-arrow-left-right"></i></div>
<h4>Skill Exchange</h4>
<p>Teach what you know and learn what you love without spending money. Knowledge becomes the currency that benefits everyone.</p>
</div>
</div>

<div class="col-lg-6">
<div class="feature-card">
<div class="icon-box purple"><i class="bi bi-mortarboard-fill"></i></div>
<h4>Learn & Teach Together</h4>
<p>Every member can be both a mentor and a learner, creating meaningful experiences that encourage mutual learning and growth.</p>
</div>
</div>

<div class="col-lg-6">
<div class="feature-card">
<div class="icon-box orange"><i class="bi bi-search"></i></div>
<h4>Smart Discovery</h4>
<p>Browse skill categories and discover the ideal learning partner based on shared interests, expertise, and availability.</p>
</div>
</div>

<div class="col-lg-6">
<div class="feature-card">
<div class="icon-box cyan"><i class="bi bi-chat-dots-fill"></i></div>
<h4>Easy Skill Requests</h4>
<p>Send, receive, accept, or decline exchange requests through a simple interface designed to make collaboration effortless.</p>
</div>
</div>

<div class="col-lg-6">
<div class="feature-card">
<div class="icon-box green"><i class="bi bi-graph-up-arrow"></i></div>
<h4>Track Your Progress</h4>
<p>Monitor pending requests, accepted exchanges, completed sessions, and your overall learning journey from one dashboard.</p>
</div>
</div>

</div>

</div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    