<%@ page import="com.example.models.Student" %>
<%@ page session="true" %>
<%
    Student student = (Student) session.getAttribute("student");
    if (student == null) {
        response.sendRedirect("student_login.jsp");
        return;
    }
%>

<html>
<head>
    <title>Student Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .dashboard {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #4CAF50;
            text-align: center;
        }

        p {
            font-size: 18px;
            color: #333;
        }

        .info {
            margin-bottom: 30px;
        }

        h3 {
            color: #333;
            border-bottom: 2px solid #4CAF50;
            padding-bottom: 5px;
            margin-bottom: 10px;
        }

        .progress {
            background-color: #f4f4f4;
            padding: 15px;
            border-left: 4px solid #4CAF50;
            font-size: 16px;
        }

        .container {
            text-align: center;
            margin-top: 20px;
        }

        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="dashboard">
        <h2>Welcome, ${student.name}</h2>
        <div class="info">
            <p><strong>Email:</strong> ${student.email}</p>
            <p><strong>Enrollment Number:</strong> ${student.enrollmentNumber}</p>
        </div>
        <h3>Your Progress:</h3>
        <div class="progress">
            <p>${student.progress}</p>
        </div>
        <div class="container">
            <a href="index.jsp" class="btn">Logout</a>
        </div>
    </div>
</body>
</html>
