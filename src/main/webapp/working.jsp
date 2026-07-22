<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>How Mentora Works</title>

    <!-- Bootstrap -->

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />

    <!-- Bootstrap Icons -->

    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
    />

    <link rel="stylesheet" href="how_mentora_works.css" />

    <style>
      /* ===========================
   Google Font
=========================== */

      @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap");

      /* ===========================
   Global
=========================== */

      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
      }

      body {
          background:#eef4ff;
      }

      /* ===========================
   Section
=========================== */

      .works-section {

         background:#eef4ff;

        position: relative;

        overflow: hidden;
      }

    
     

      /* ===========================
   Heading
=========================== */

      .heading {
        text-align: center;

        margin-bottom: 80px;
      }

      .heading h2 {
        font-size: 48px;

        font-weight: 800;

        color: #1d2b44;
      }

      .heading span {
        color: #0d3b86;
      }

      .heading p {
        width: 700px;

        max-width: 100%;

        margin: 20px auto 0;

        color: #667791;

        font-size: 18px;

        line-height: 1.8;
      }

      /* ===========================
   Timeline
=========================== */

      .timeline {
        position: relative;
      }

      .line {
        position: absolute;

        top: 45px;

        left: 10%;

        width: 80%;

        height: 4px;

        background: #c9daff;

        z-index: 0;

        border-radius: 50px;
      }

      /* ===========================
   Cards
=========================== */

      .step-card {
        position: relative;

        background: #fff;

        border: 1px solid #d8e5ff;

        border-radius: 24px;

        padding: 35px 25px;

        text-align: center;

        transition: 0.35s;

        box-shadow: 0 12px 30px rgba(13, 59, 134, 0.08);

        z-index: 2;

        height: 100%;
      }

      .step-card:hover {
        transform: translateY(-10px);

        box-shadow: 0 22px 50px rgba(13, 59, 134, 0.15);

        border-color: #0d3b86;
      }

      /* ===========================
   Step Number
=========================== */

      .step-number {
        position: absolute;

        top: -18px;

        left: 50%;

        transform: translateX(-50%);

        width: 38px;

        height: 38px;

        border-radius: 50%;

        background: #0d3b86;

        color: white;

        display: flex;

        justify-content: center;

        align-items: center;

        font-weight: 700;

        font-size: 17px;

        box-shadow: 0 8px 20px rgba(13, 59, 134, 0.25);
      }

      /* ===========================
   Icon
=========================== */

      .icon-circle {
        width: 85px;

        height: 85px;

        margin: 20px auto 25px;

        border-radius: 50%;

        background: #eef4ff;

        display: flex;

        justify-content: center;

        align-items: center;

        transition: 0.35s;
      }

      .icon-circle i {
        font-size: 34px;

        color: #0d3b86;
      }

      .step-card:hover .icon-circle {
        background: #0d3b86;

        transform: scale(1.08);
      }

      .step-card:hover .icon-circle i {
        color: #fff;
      }

      /* ===========================
   Title
=========================== */

      .step-card h4 {
        font-size: 24px;

        color: #1d2b44;

        font-weight: 700;

        margin-bottom: 15px;
      }

      /* ===========================
   Description
=========================== */

      .step-card p {
        color: #667791;

        line-height: 1.8;

        font-size: 16px;

        margin: 0;
      }

      /* ===========================
   Responsive
=========================== */

      @media (max-width: 991px) {
        .line {
          display: none;
        }

        .heading h2 {
          font-size: 38px;
        }

        .heading p {
          font-size: 17px;
        }

        .step-card {
          margin-bottom: 30px;
        }
      }

      @media (max-width: 576px) {
        .works-section {
          padding: 70px 0;
        }

        .heading {
          margin-bottom: 50px;
        }

        .heading h2 {
          font-size: 32px;
        }

        .heading p {
          font-size: 16px;
        }

        .icon-circle {
          width: 75px;

          height: 75px;
        }

        .icon-circle i {
          font-size: 30px;
        }

        .step-card {
          padding: 30px 20px;
        }

        .step-card h4 {
          font-size: 22px;
        }
      }
    </style>
  </head>

  <body>
 
    <section class="works-section">
     <%@include file = "Nav.jsp" %>
     <br>
      <div class="container">
        <div class="heading">
          <h2>How <span>Mentora</span> Works</h2>

          <p>
            Start your learning journey in just a few simple steps. Teach what
            you know, learn what you love, and grow together.
          </p>
        </div>

        <!-- Timeline -->

        <div class="timeline">
          <div class="line"></div>

          <div class="row g-4 justify-content-center">
            <!-- STEP 1 -->

            <div class="col-lg col-md-6">
              <div class="step-card">
                <div class="step-number">1</div>

                <div class="icon-circle">
                  <i class="bi bi-person-plus"></i>
                </div>

                <h4>Create Account</h4>

                <p>
                  Sign up for Mentora and create your profile in just a few
                  minutes.
                </p>
              </div>
            </div>

            <!-- STEP 2 -->

            <div class="col-lg col-md-6">
              <div class="step-card">
                <div class="step-number">2</div>

                <div class="icon-circle">
                  <i class="bi bi-mortarboard"></i>
                </div>

                <h4>Add Skills</h4>

                <p>
                  Mention the skills you can teach and the ones you're excited
                  to learn.
                </p>
              </div>
            </div>

            <!-- STEP 3 -->

            <div class="col-lg col-md-6">
              <div class="step-card">
                <div class="step-number">3</div>

                <div class="icon-circle">
                  <i class="bi bi-search"></i>
                </div>

                <h4>Find People</h4>

                <p>
                  Discover learners and mentors based on categories and
                  interests.
                </p>
              </div>
            </div>

            <!-- STEP 4 -->

            <div class="col-lg col-md-6">
              <div class="step-card">
                <div class="step-number">4</div>

                <div class="icon-circle">
                  <i class="bi bi-send"></i>
                </div>

                <h4>Send Request</h4>

                <p>
                  Send a skill exchange request by selecting what you offer and
                  want.
                </p>
              </div>
            </div>

            <!-- STEP 5 -->

            <div class="col-lg col-md-6">
              <div class="step-card">
                <div class="step-number">5</div>

                <div class="icon-circle">
                  <i class="bi bi-check2-circle"></i>
                </div>

                <h4>Start Learning</h4>

                <p>
                  Accept the request and begin learning together through
                  collaboration.
                </p>
                
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <br>
    </section>
  </body>
</html>
