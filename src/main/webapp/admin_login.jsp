<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Login</title>
  <link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="styles1.css">
</head>
<body>
  <div class="login-container">
    <div class="login-box">
      <h2>Login</h2>
      <form id="adminloginForm" action="adminLogin" method="POST">
        <input type="text" id="adminemail" name="username" placeholder="Admin ID" required>
        <input type="password" id="adminpassword"  name="password" placeholder="Admin Password" required>
      	<button type="submit" class="btn">Login</button>
      </form>
    </div>
  </div>
</body>
</html>
