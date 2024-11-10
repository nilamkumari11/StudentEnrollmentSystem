<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <style>
        /* General Page Layout */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f0f0f5, #cfd9df);
            background-image: url('pic8.png');
            background-size: cover;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        input, button {
            outline: none;
            border: none;
        }

        /* Centered Container for Registration */
        .signup-container {
            background: rgba(255, 255, 255, 0.8);
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.1);
            border-radius: 20px;
            padding: 40px;
            width: 350px;
            max-width: 90%;
            text-align: center;
            transition: transform 0.3s ease;
        }

        h2 {
            font-size: 1.8em;
            color: #333;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        input {
            background: #ffffff;
            padding: 12px;
            margin: 10px 0;
            border-radius: 10px;
            font-size: 1em;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease;
        }

        input:focus {
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.15);
        }

        /* Button Styles */
        button {
            background: linear-gradient(135deg, #0f2ab1, #31a1ae);
            padding: 12px;
            margin-top: 15px;
            color: #fff;
            font-size: 1.1em;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.3s ease, box-shadow 0.3s ease;
        }

        button:hover {
            background: linear-gradient(135deg, #03045b, #080474);
            box-shadow: 0px 6px 15px rgba(1, 25, 132, 0.687);
        }

        button:active {
            transform: scale(0.98);
        }

        /* Link Styling */
        p {
            margin-top: 15px;
            color: #555;
        }

        a {
            text-decoration: none;
            color: #1c0396;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #0f0065c9;
        }

        /* Additional Aesthetic Enhancements */
        .signup-container {
            backdrop-filter: blur(20px);
            animation: fadeIn 0.6s ease;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive Styles */
        @media (max-width: 600px) {
            .signup-container {
                padding: 30px;
                width: 85%;
            }

            h2 {
                font-size: 1.5em;
            }
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h2>Register as a New Student</h2>
        <form id="studentRegisterForm" action="${pageContext.request.contextPath}/register" method="POST">
            <input type="text" name="name" placeholder="Name" required /><br />
            <input type="email" name="email" placeholder="Email" required /><br />
            <input type="text" name="enrollmentNumber" placeholder="Enrollment Number" required /><br />
            <input type="password" name="password" placeholder="Password" required /><br />
            <button type="submit">Register</button>
        </form>
        <p>Already have an account? <a href="student_login.jsp">Login here</a></p>
    </div>
</body>
</html>
