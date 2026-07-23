
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Add Skill | Mentora</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="addSkill.css">

</head>

<body>

<div class="container py-5">

    <!-- Page Heading -->

    <div class="page-header mb-4">

        <h2>Add Teaching Skill</h2>

        <p>Share your expertise and help others learn.</p>

    </div>

    <!-- Form Card -->

    <div class="skill-card">

        <form action="AddSkillServlet" method="post">

            <!-- Skill Details -->

            <h4 class="section-title">Skill Details</h4>

            <div class="row">

                <div class="col-md-6 mb-4">

                    <label class="form-label">Skill Name</label>

                    <input type="text"
                           class="form-control"
                           name="skillName"
                           placeholder="Enter Skill Name"
                           required>

                </div>

                <div class="col-md-6 mb-4">

                    <label class="form-label">Category</label>

                    <select class="form-select" name="category">

                        <option>Select Category</option>

                        <option>Programming</option>

                        <option>Web Development</option>

                        <option>Mobile Development</option>

                        <option>Database</option>

                        <option>Cloud Computing</option>

                        <option>AI / Machine Learning</option>

                        <option>UI / UX</option>

                        <option>Communication</option>

                        <option>Languages</option>

                    </select>

                </div>

                <div class="col-md-6 mb-4">

                    <label class="form-label">Experience Level</label>

                    <select class="form-select" name="experience">

                        <option>Select Experience</option>

                        <option>Beginner</option>

                        <option>Intermediate</option>

                        <option>Advanced</option>

                        <option>Expert</option>

                    </select>

                </div>

                <div class="col-md-6 mb-4">

                    <label class="form-label">Availability</label>

                    <select class="form-select" name="availability">

                        <option>Select Availability</option>

                        <option>Weekdays</option>

                        <option>Weekends</option>

                        <option>Both</option>

                    </select>

                </div>

            </div>

            <!-- Description -->

            <h4 class="section-title mt-2">Skill Description</h4>

            <div class="mb-4">

                <label class="form-label">Description</label>

                <textarea class="form-control"
                          rows="5"
                          name="description"
                          placeholder="Describe what you can teach..."></textarea>

            </div>

            <!-- Preferred Mode -->

            <h4 class="section-title mt-2">Teaching Preference</h4>

            <div class="row">

                <div class="col-md-6 mb-4">

                    <label class="form-label">Mode</label>

                    <select class="form-select" name="mode">

                        <option>Online</option>

                        <option>Offline</option>

                        <option>Both</option>

                    </select>

                </div>

                <div class="col-md-6 mb-4">

                    <label class="form-label">Preferred Language</label>

                    <select class="form-select" name="language">

                        <option>English</option>

                        <option>Kannada</option>

                        <option>Hindi</option>

                        <option>Tamil</option>

                        <option>Telugu</option>

                    </select>

                </div>

            </div>

            <!-- Buttons -->

            <div class="text-end mt-4">

                <button type="reset"
                        class="btn btn-light me-2">

                    Clear

                </button>

                <button type="submit"
                        class="btn save-btn">

                    <i class="bi bi-plus-circle"></i>

                    Save Skill

                </button>

            </div>

        </form>

    </div>

</div>

</body>
</html>