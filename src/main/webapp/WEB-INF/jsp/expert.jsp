<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Expert Login - Rythu Mitra Portal</title>
    <style>
        /* Styling for the body and page background */
        body {
            font-family: Arial, sans-serif;
            background-color: #f3e5f5; /* Light purple background */
            background-image: url('expert-bg.jpeg'); /* Add your background image URL here */
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
        .expert-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
        }

        /* Heading styles */
        h2 {
            color: #4a148c; /* Dark purple text */
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
        .expert-btn {
            width: 100%;
            padding: 15px;
            background-color: #7b1fa2; /* Purple background */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 15px;
            transition: background-color 0.3s ease;
        }

        /* Button hover effect */
        .expert-btn:hover {
            background-color: #6a1b9a; /* Darker purple */
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

<div class="expert-container">
    <h2>Login as Expert</h2>

    <!-- Expert login form -->
    <form action="expertLogin" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="email" name="email" placeholder="Email" required>

        <button type="submit" class="expert-btn">Login</button>
    </form>

    <!-- Footer text -->
    <p class="footer-text">Don't have an account? <a href="signup">Signup here</a></p>
</div>

</body>
</html>
