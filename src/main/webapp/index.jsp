<!DOCTYPE html>
<html lang="en">
<head> 
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Enrollment System</title>
  
  <style>
    /* General Styles */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    
    body {
        font-family: 'Arial', sans-serif;
        line-height: 1.6;
    }
    
    .header {
        background-color: #142361;
        padding: 10px 0;
    }
    
    .navbar {
        max-width: 1200px;
        margin: auto;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    
    .navbar .logo {
        font-size: 1.5em;
        color: #fff;
        font-weight: bold;
    }
    
    .navbar .nav-links {
        list-style: none;
        display: flex;
    }
    
    .navbar .nav-links li {
        margin-left: 20px;
    }
    
    .navbar .nav-links a {
        text-decoration: none;
        color: #fff;
        padding: 5px 10px;
    }
    
    .navbar .nav-links a:hover {
        background-color: #4e4f55;
        border-radius: 5px;
    }
    
    /* Hero Section */
    .hero {
        background-image: url('pic1.jpg');
        background-size: cover;
        background-position: center;
        height: 850px;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    
    .hero-content {
        text-align: center;
        color: #fff;
    }
    
    .hero h1 {
        font-size: 3em;
        margin-bottom: 20px;
    }
    
    .hero p {
        font-size: 1.2em;
        margin-bottom: 30px;
    }
    
    .btn {
        text-decoration: none;
        background-color: #4343f9e0;
        padding: 15px 30px;
        color: #fefefe;
        border-radius: 5px;
        font-size: 1.1em;
    }
    
    .btn:hover {
        background-color: #020e41;
    }
    
    /* Features Section */
    .features-section {
        padding: 50px 0;
        text-align: center;
        background-color: #f4f4f4;
    }
    
    .feature-box {
        margin: 20px auto;
        max-width: 300px;
    }
    
    .feature-box h2 {
        font-size: 1.5em;
        margin-bottom: 10px;
    }
    
    .feature-box p {
        font-size: 1.1em;
        color: #666;
    }
    
    /* Footer */
    .footer {
        text-align: center;
        padding: 20px 0;
        background-color: #2d2e32;
        color: #fff;
    }
  </style>

  <script>
    document.addEventListener("DOMContentLoaded", function() {
        // Handle Login
        const loginForm = document.getElementById('loginForm');
        if (loginForm) {
            loginForm.addEventListener('submit', function(event) {
              event.preventDefault();
              const email = document.getElementById('email').value;
              const password = document.getElementById('password').value;
              
              // Simulate login process
              if(email === "student@example.com" && password === "12345") {
                alert("Login successful!");
                window.location.href = "dashboard.html"; // Redirect to dashboard (you can create this page separately)
              } else {
                alert("Invalid credentials. Please try again.");
              }
            });
        }
      
        // Handle Sign Up
        const signupForm = document.getElementById('signupForm');
        if (signupForm) {
            signupForm.addEventListener('submit', function(event) {
              event.preventDefault();
              const name = document.getElementById('name').value;
              const email = document.getElementById('signupEmail').value;
              const password = document.getElementById('signupPassword').value;
          
              // Simulate sign-up process
              if (name && email && password) {
                alert("Sign-up successful!");
                window.location.href = "login.html";
              } else {
                alert("Please fill all the fields.");
              }
            });
        }
    });
  </script>
</head>
<body>
  <header class="header">
    <nav class="navbar">
      <div class="logo">Enroll Student</div>
      <ul class="nav-links">
        <li><a href="#">Home</a></li>
        <li><a href="#features">Features</a></li>
        <li><a href="student_login.jsp">Student Login</a></li>
        <li><a href="student_register.jsp">Student Register</a></li>
        <li><a href="admin_login.jsp">Admin Login</a></li>
      </ul>
    </nav>
  </header>

  <section class="hero">
    <div class="hero-content">
      <h1>Welcome to the Student Enrollment System</h1>
      <p>Easily manage student enrollments online!</p>
      <a href="student_login.jsp" class="btn">Login</a>
    </div>
  </section>

  <section id="features" class="features-section">
    <div class="feature-box">
      <h2>Easy Enrollment</h2>
      <p>Enroll students seamlessly with a few clicks.</p>
    </div>
    <div class="feature-box">
      <h2>Track Progress</h2>
      <p>Track student progress and manage courses effectively.</p>
    </div>
    <div class="feature-box">
      <h2>Secure System</h2>
      <p>Highly secure system with student data protection.</p>
    </div>
  </section>

  <footer class="footer">
    <p>&copy; 2024 EnrollMe - All rights reserved.</p>
  </footer>
</body>
</html>
