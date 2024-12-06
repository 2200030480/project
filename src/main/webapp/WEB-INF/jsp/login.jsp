<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Rythu Mitra Portal</title>
    <style>
        /* Styling for the body and page background */
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://hips.hearstapps.com/hmg-prod/images/farm-quotes-1580917869.jpg?crop=0.9612555174104953xw:1xh;center,top&resize=1200:*'); /* Add your background image URL */
            background-size: cover; /* Cover the entire page */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Prevent image repeat */
            background-attachment: fixed; /* Keep the background fixed when scrolling */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }

        /* Login form container styling */
        .login-container {
            background-color: rgba(255, 255, 255, 0.9); /* White background with slight transparency */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            text-align: center;
            width: 400px;
        }

        /* Heading styles */
        h2 {
            color: #4a148c; /* Dark purple text color */
            margin-bottom: 20px;
        }

        /* Input field styling */
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #d1c4e9; /* Light purple border */
            border-radius: 5px;
        }

        /* Login button styling */
        .login-btn {
            width: 100%;
            padding: 15px;
            background-color: #e91e63; /* Pink background */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 15px;
            transition: background-color 0.3s ease;
        }

        /* Button hover effect */
        .login-btn:hover {
            background-color: #c2185b; /* Darker pink */
        }

        /* Footer text styling */
        .footer-text {
            margin-top: 20px;
            font-size: 14px;
            color: #757575; /* Gray text */
        }

        .footer-text a {
            color: #ab47bc; /* Purple link color */
            text-decoration: none;
        }

        .footer-text a:hover {
            color: #8e24aa; /* Darker purple on hover */
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Login to Rythu Mitra</h2>

    <!-- Login form -->
    <form action="loginUser" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>

        <button type="submit" class="login-btn">Login</button>
    </form>

    <!-- Footer or additional text -->
    <p class="footer-text">Don't have an account? <a href="signup">Sign up here</a></p>
</div>

</body>
</html>
