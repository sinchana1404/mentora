<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Mentora Community</title>

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

    <link rel="stylesheet" href="community.css" />

    <style>
      /* ==========================================
   Google Font
========================================== */

      @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap");

      /* ==========================================
   Global
========================================== */

      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
      }

      body {
        background: #eef4ff;
      }

      /* ==========================================
   Section
========================================== */

      .community-section {

      
		padding :20px;
        position: relative;

        overflow: hidden;
      }

  
      /* ==========================================
   Heading
========================================== */

      .section-heading {
        text-align: center;

        margin-bottom: 70px;
      }

      .section-heading h2 {
        font-size: 48px;

        font-weight: 800;

        color: #1d2b44;

        margin-bottom: 20px;
      }

      .section-heading span {
        color: #0d3b86;
      }

      .section-heading p {
        width: 760px;

        max-width: 100%;

        margin: auto;

        color: #667791;

        font-size: 18px;

        line-height: 1.9;
      }

      /* ==========================================
   Cards
========================================== */

      .community-card {
        background: #fff;

        border: 1px solid #d8e5ff;

        border-radius: 24px;

        padding: 40px 35px;

        height: 100%;

        transition: 0.35s;

        box-shadow: 0 15px 35px rgba(13, 59, 134, 0.08);
      }

      .community-card:hover {
        transform: translateY(-10px);

        border-color: #0d3b86;

        box-shadow: 0 25px 55px rgba(13, 59, 134, 0.15);
      }

      /* ==========================================
   Icon Box
========================================== */

      .icon-box {
        width: 80px;

        height: 80px;

        border-radius: 22px;

        display: flex;

        justify-content: center;

        align-items: center;

        margin-bottom: 28px;

        transition: 0.35s;
      }

      .icon-box i {
        font-size: 34px;
      }

      /* Colors */

      .icon-red {
        background: #ffecef;
      }

      .icon-red i {
        color: #ff3b5c;
      }

      .icon-blue {
        background: #eaf2ff;
      }

      .icon-blue i {
        color: #0d6efd;
      }

      .icon-green {
        background: #e8fbf1;
      }

      .icon-green i {
        color: #16a34a;
      }

      .community-card:hover .icon-box {
        transform: scale(1.08);
      }

      /* ==========================================
   Card Content
========================================== */

      .community-card h4 {
        font-size: 28px;

        font-weight: 700;

        color: #1d2b44;

        margin-bottom: 18px;
      }

      .community-card p {
        color: #667791;

        line-height: 1.9;

        font-size: 17px;
      }

      /* ==========================================
   CTA
========================================== */

      .cta-section {
        margin-top: 90px;

        text-align: center;

        background: #fff;

        border-radius: 28px;

        padding: 60px 40px;

        border: 1px solid #d8e5ff;

        box-shadow: 0 15px 40px rgba(13, 59, 134, 0.08);
      }

      .cta-section h3 {
        font-size: 38px;

        font-weight: 800;

        color: #1d2b44;

        margin-bottom: 18px;
      }

      .cta-section p {
        width: 700px;

        max-width: 100%;

        margin: 0 auto 35px;

        color: #667791;

        font-size: 18px;

        line-height: 1.8;
      }

      /* ==========================================
   Button
========================================== */

      .join-btn {
        display: inline-flex;

        align-items: center;

        gap: 12px;

        padding: 18px 42px;

        border-radius: 18px;

        text-decoration: none;

        background: linear-gradient(135deg, #0d3b86, #2e7cf7);

        color: white;

        font-size: 18px;

        font-weight: 600;

        transition: 0.35s;

        box-shadow: 0 18px 35px rgba(13, 59, 134, 0.22);
      }

      .join-btn:hover {
        color: white;

        transform: translateY(-3px);

        box-shadow: 0 25px 45px rgba(13, 59, 134, 0.3);
      }

      .join-btn i {
        transition: 0.35s;
      }

      .join-btn:hover i {
        transform: translateX(6px);
      }

      /* ==========================================
   Responsive
========================================== */

      @media (max-width: 991px) {
        .community-section {
          padding: 80px 0;
        }

        .section-heading h2 {
          font-size: 38px;
        }

        .community-card {
          margin-bottom: 20px;
        }

        .cta-section {
          margin-top: 60px;
        }

        .cta-section h3 {
          font-size: 30px;
        }
      }

      @media (max-width: 576px) {
        .section-heading h2 {
          font-size: 30px;
        }

        .section-heading p {
          font-size: 16px;
        }

        .community-card {
          padding: 30px 25px;
        }

        .community-card h4 {
          font-size: 24px;
        }

        .community-card p {
          font-size: 16px;
        }

        .icon-box {
          width: 70px;

          height: 70px;
        }

        .icon-box i {
          font-size: 28px;
        }

        .cta-section {
          padding: 40px 25px;
        }

        .cta-section h3 {
          font-size: 26px;
        }

        .cta-section p {
          font-size: 16px;
        }

        .join-btn {
          padding: 16px 30px;

          font-size: 17px;
        }
      }
    </style>
  </head>

  <body>
  
  <%@include file="Nav.jsp"%>
  <br>
    <section class="community-section">
      <div class="about_container">
        <!-- Heading -->

        <div class="section-heading">
          <h2>
            More Than Learning.
            <span>It's a Community.</span>
          </h2>

          <p>
            Mentora is more than a skill exchange platform. It's a place where
            passionate learners and mentors connect, share knowledge, inspire
            each other, and grow together.
          </p>
        </div>

        <!-- Cards -->

        <div class="row g-4">
          <!-- Card 1 -->

          <div class="col-lg-4">
            <div class="community-card">
              <div class="icon-box icon-red">
                <i class="bi bi-heart"></i>
              </div>

              <h4>Knowledge is Shared</h4>

              <p>
                Every member brings unique experiences and valuable skills.
                Sharing what you know helps others grow while strengthening your
                own understanding.
              </p>
            </div>
          </div>

          <!-- Card 2 -->

          <div class="col-lg-4">
            <div class="community-card">
              <div class="icon-box icon-blue">
                <i class="bi bi-people"></i>
              </div>

              <h4>Learn From Real People</h4>

              <p>
                Connect directly with people who are passionate about teaching
                and learning instead of relying only on videos or traditional
                courses.
              </p>
            </div>
          </div>

          <!-- Card 3 -->

          <div class="col-lg-4">
            <div class="community-card">
              <div class="icon-box icon-green">
                <i class="bi bi-rocket-takeoff"></i>
              </div>

              <h4>Grow Together</h4>

              <p>
                Every successful exchange builds confidence, creates
                friendships, expands opportunities, and helps everyone become a
                better learner.
              </p>
            </div>
          </div>
        </div>

        <!-- CTA -->

        <div class="cta-section">
          <h3>Ready to Begin Your Skill Exchange Journey?</h3>

          <p>
            Join thousands of learners and mentors who are already sharing
            knowledge and building a stronger community.
          </p>

          <a href="Register.jsp" class="join-btn">
            Join Mentora Today

            <i class="bi bi-arrow-right"></i>
          </a>
        </div>
      </div>
    </section>
  </body>
</html>
