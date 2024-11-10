<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student-login</title>
  <link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="styles1.css">
</head>
<body>
  <div class="login-container">
    <div class="login-box">
      <h2>Login</h2>
      <form id="loginForm" action="studentLogin" method="POST">
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit" class="btn">Login</button>
      </form>
      <p>Don't have an account? <a href="student_register.jsp">Register</a></p>
    </div>
  </div>
</body>
</html>