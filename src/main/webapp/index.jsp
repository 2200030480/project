<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RYTHU MYTRA REGISTRATION PORTAL</title>
    <!-- Inline CSS for styling -->
    <style>
        /* Body and Container Styles */
        body {
            font-family: Arial, sans-serif;
            background: url('https://content.jdmagicbox.com/v2/comp/hyderabad/l3/040pxx40.xx40.171217204008.v6l3/catalogue/rythu-mitra-products-nizampet-hyderabad-rice-retailers-3krcro1yyq.jpg') no-repeat center center fixed;
            background-color: #FAF7F0; /* Light background color */
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* Ensure the body takes full viewport height */
        }

        h2 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }

        /* Button Container */
        .button-container-left {
            position: absolute;
            top: 20px;
            left: 20px;
        }

        .button-container-right {
            position: absolute;
            top: 20px;
            right: 20px;
        }

        /* Button Styles */
        .button {
            display: inline-block;
            padding: 15px 30px;
            margin: 10px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 10px;
            font-size: 16px;
            transition: background-color 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .button:hover {
            background-color: #218838;
        }

        /* Footer Styles */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: auto; /* This ensures the footer sticks to the bottom */
            width: 100%;
        }

        /* Container to handle content flex growth */
        .content-wrapper {
            flex-grow: 1; /* Ensures that the content pushes the footer down */
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>

<!-- Include the header -->
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<div class="content-wrapper">
    <h2>Welcome to the Rythu Mitra Registration Portal</h2>

    <!-- Button Container for left side (Signup and Login) -->
    <div class="button-container-left">
        <a href="${pageContext.request.contextPath}/signup" class="button">Signup</a>
        <a href="${pageContext.request.contextPath}/login" class="button">Login</a>
    </div>

    <!-- Button Container for right side (Farmer, Public, Expert) -->
    <div class="button-container-right">
        <a href="${pageContext.request.contextPath}/farmerLogin" class="button">Farmer</a>
        <a href="${pageContext.request.contextPath}/publicLogin" class="button">Public</a>
        <a href="${pageContext.request.contextPath}/expertLogin" class="button">Expert</a>
    </div>
</div>

<!-- Include the footer -->
<footer>
    <p>&copy; 2024 Rythu Mitra Registration Portal. All Rights Reserved.</p>
</footer>

</body>
</html>
