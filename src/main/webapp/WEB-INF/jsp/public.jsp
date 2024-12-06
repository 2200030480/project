<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Public Login - Rythu Mitra Portal</title>
    <style>
        /* Styling for the body and page background */
        body {
            font-family: Arial, sans-serif;
            background-color: #e3f2fd; /* Light blue background */
            background-image: url('public-bg.jpeg'); /* Add your background image URL here */
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

        /* Form container styling */
        .public-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
        }

        /* Heading styles */
        h2 {
            color: #0d47a1; /* Dark blue text */
            margin-bottom: 20px;
        }

        /* Input field styling */
        input[type="text"], input[type="password"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Button styling */
        .public-btn {
            width: 100%;
            padding: 15px;
            background-color: #1976d2; /* Blue background */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 15px;
            transition: background-color 0.3s ease;
        }

        /* Button hover effect */
        .public-btn:hover {
            background-color: #1565c0; /* Darker blue */
        }

        /* Footer text styling */
        .footer-text {
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>

<div class="public-container">
    <h2>Login as Public User</h2>

    <!-- Public login form -->
    <form action="publicLogin" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="email" name="email" placeholder="Email" required>

        <button type="submit" class="public-btn">Login</button>
    </form>

    <!-- Footer text -->
    <p class="footer-text">Don't have an account? <a href="signup">Signup here</a></p>
</div>

</body>
</html>
