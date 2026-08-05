# 🌟 Mentora – Skill Exchange Platform

Mentora is a full-stack Java web application that enables users to exchange skills with one another. Users can create profiles, showcase their skills, send skill exchange requests, and connect with others to learn and teach in a collaborative environment.

## 🚀 Features

- 👤 User Registration and Login
- 🔒 User Authentication and Session Management
- 📝 Profile Management
- 💡 Add, Update, Delete, and View Skills (CRUD Operations)
- 🤝 Send Skill Exchange Requests
- ✅ Accept or Reject Requests
- ❌ Cancel Pending Requests
- 📋 View Incoming and Outgoing Requests
- 🎨 Responsive and User-Friendly Interface
- 🏗️ MVC Architecture for Better Code Organization

---

## 🛠️ Tech Stack

### Backend
- Java
- J2EE
- JSP
- Servlets
- JDBC

### Frontend
- HTML5
- CSS3
- JavaScript

### Database
- MySQL

### Architecture
- MVC (Model-View-Controller)

---

## 📂 Project Structure

```
Mentora/
│
├── src/
│   ├── controller/
│   ├── dao/
│   ├── model/
│   ├── utility/
│   └── ...
│
├── WebContent/
│   ├── css/
│   ├── js/
│   ├── images/
│   ├── jsp/
│   └── WEB-INF/
│
├── database/
│   └── mentora.sql
│
└── README.md
```

---

## ⚙️ Installation

### Prerequisites

- Java JDK 8 or above
- Apache Tomcat
- MySQL Server
- Eclipse IDE (Enterprise Edition recommended)

### Steps

1. Clone the repository

```bash
git clone https://github.com/yourusername/mentora.git
```

2. Import the project into Eclipse as a **Dynamic Web Project**.

3. Create a MySQL database.

```sql
CREATE DATABASE mentora;
```

4. Import the provided SQL file into MySQL.

5. Update the database credentials in your JDBC configuration.

Example:

```java
String url = "jdbc:mysql://localhost:3306/mentora";
String username = "root";
String password = "your_password";
```

6. Add the MySQL JDBC Driver to the project.

7. Deploy the project on Apache Tomcat.

8. Open your browser and visit:

```
http://localhost:8080/Mentora
```

---

## 📸 Screenshots

You can add screenshots here.

### Home Page

```
(Add Screenshot)
```

### Dashboard

```
(Add Screenshot)
```

### Skill Exchange Requests

```
(Add Screenshot)
```

---

## 🎯 Future Improvements

- Email Notifications
- Chat/Messaging System
- Skill Ratings & Reviews
- Profile Pictures
- Search and Filter Skills
- Admin Dashboard
- Password Reset Functionality

---

## 📚 Learning Outcomes

This project helped me gain practical experience in:

- Full Stack Java Web Development
- MVC Architecture
- JDBC and MySQL Integration
- Session Management
- CRUD Operations
- Form Validation
- Responsive Web Design
- Database Design

---

## 👨‍💻 Author

**Your Name**

GitHub: https://github.com/yourusername

LinkedIn: https://linkedin.com/in/yourprofile

---

## ⭐ Support

If you found this project useful, consider giving it a ⭐ on GitHub!

Feedback and suggestions are always welcome.