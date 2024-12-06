<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Signup - Rythu Mitra Portal</title>
    <style>
        /* Styling for the body and page background */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Light blue background as a fallback */
            background-image: url('data:image/jpeg;base64,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'); /* Add your background image URL here */
            background-size: cover; /* Cover the entire viewport */
            background-position: center; /* Center the background image */
            background-repeat: no-repeat; /* Prevent image repetition */
            background-attachment: fixed; /* Fix the background when scrolling */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }

        /* Signup form container styling */
        .signup-container {
            background-color: #fff; /* White background for form */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            text-align: center;
            width: 400px;
        }

        /* Heading styles */
        h2 {
            color: #333; /* Dark text color */
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

        /* Signup button styling */
        .signup-btn {
            width: 100%;
            padding: 15px;
            background-color: #28a745; /* Green background */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 15px;
            transition: background-color 0.3s ease;
        }

        /* Button hover effect */
        .signup-btn:hover {
            background-color: #218838; /* Darker green */
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

<div class="signup-container">
    <h2>Signup for Rythu Mitra</h2>

    <!-- Signup form -->
    <form action="save" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="text" name="eventRegistered" placeholder="Portal Registered" required>

        <button type="submit" class="signup-btn">Sign Up</button>
    </form>

    <!-- Footer or additional text -->
    <p class="footer-text">Already have an account? <a href="login">Login here</a></p>
</div>

</body>
</html>
