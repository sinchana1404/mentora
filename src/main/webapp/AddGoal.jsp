<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Add Learning Goal | Mentora</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="addGoal.css">

</head>

<body>

<div class="container py-5">

    <!-- Page Header -->

    <div class="page-header">

        <h2>Add Learning Goal</h2>

        <p>Tell the community what you'd like to learn.</p>

    </div>

    <!-- Form Card -->

    <div class="goal-card">

        <form action="AddGoalServlet" method="post">

            <!-- Goal Details -->

            <h4 class="section-title">Learning Goal</h4>

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

                    <label class="form-label">Current Knowledge Level</label>

                    <select class="form-select" name="currentLevel">

                        <option>Select Level</option>

                        <option>Beginner</option>

                        <option>Intermediate</option>

                        <option>Advanced</option>

                    </select>

                </div>

                <div class="col-md-6 mb-4">

                    <label class="form-label">Preferred Learning Mode</label>

                    <select class="form-select" name="mode">

                        <option>Online</option>

                        <option>Offline</option>

                        <option>Both</option>

                    </select>

                </div>

            </div>

            <!-- Goal Description -->

            <h4 class="section-title">Learning Details</h4>

            <div class="mb-4">

                <label class="form-label">Why do you want to learn this skill?</label>

                <textarea class="form-control"
                          rows="5"
                          name="goalDescription"
                          placeholder="Describe your learning objective..."></textarea>

            </div>

            <!-- Preferences -->

            <h4 class="section-title">Preferences</h4>

            <div class="row">

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

                <div class="col-md-6 mb-4">

                    <label class="form-label">Target Completion</label>

                    <select class="form-select" name="duration">

                        <option>1 Month</option>

                        <option>2 Months</option>

                        <option>3 Months</option>

                        <option>6 Months</option>

                        <option>No Preference</option>

                    </select>

                </div>

            </div>

            <!-- Buttons -->

            <div class="text-end mt-4">

                <button type="reset" class="btn btn-light me-2">

                    Clear

                </button>

                <button type="submit" class="btn save-btn">

                    <i class="bi bi-bookmark-plus"></i>

                    Save Goal

                </button>

            </div>

        </form>

    </div>

</div>

</body>
</html>