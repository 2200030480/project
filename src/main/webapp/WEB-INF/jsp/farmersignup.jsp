<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Farmer Signup - Rythu Mitra Portal</title>
    <style>
        /* Same styles as login.jsp */
        body {
            font-family: Arial, sans-serif;
            background-color: #fffde7;
            background-image: url('farmer-bg.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .signup-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
        }

        h2 {
            color: #33691e;
            margin-bottom: 20px;
        }

        input[type="text"], input[type="password"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .signup-btn {
            width: 100%;
            padding: 15px;
            background-color: #558b2f;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 15px;
            transition: background-color 0.3s ease;
        }

        .signup-btn:hover {
            background-color: #33691e;
        }

        .footer-text {
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>

<div class="signup-container">
    <h2>Farmer Signup for Rythu Mitra</h2>

    <!-- Farmer-specific Signup form -->
    <form action="save" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="text" name="eventRegistered" placeholder="Portal Registered" required>

        <button type="submit" class="signup-btn">Sign Up</button>
    </form>

    <!-- Footer text -->
    <p class="footer-text">Already have an account? <a href="login">Login here</a></p>
</div>

</body>
</html>
