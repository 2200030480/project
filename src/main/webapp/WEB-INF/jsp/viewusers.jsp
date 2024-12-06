<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WEB-INF/css/style.css">

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fdf2e9; /* Warm, soft peach background */
            margin: 0;
            padding: 20px; /* Padding around the body */
        }

        .container {
            max-width: 800px; /* Limit the width of the container */
            margin: 0 auto; /* Center the container */
            background-color: #ffffff; /* White background for the container */
            padding: 20px; /* Padding inside the container */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        h1 {
            text-align: center; /* Center the heading */
            color: #8e44ad; /* Deep purple for the heading */
            margin-bottom: 20px; /* Space below the heading */
        }

        table {
            width: 100%; /* Full width for the table */
            border-collapse: collapse; /* Remove gaps between cells */
            margin-top: 20px; /* Space above the table */
        }

        th, td {
            padding: 12px; /* Padding inside cells */
            text-align: left; /* Align text to the left */
            border-bottom: 1px solid #d1d1d1; /* Light grey border for rows */
        }

        th {
            background-color: #e74c3c; /* Bright coral red background for headers */
            color: white; /* White text color for headers */
        }

        tr:hover {
            background-color: #fce4ec; /* Very light pink on hover */
        }

        td {
            color: #2c3e50; /* Dark blue-grey text color for table data */
        }

        .button-container {
            text-align: center; /* Center the button container */
            margin-top: 20px; /* Space above the button */
        }

        .button {
            display: inline-block;
            padding: 10px 20px; /* Padding for buttons */
            background-color: #3498db; /* Bright blue background */
            color: white; /* White text color */
            text-decoration: none; /* No underline */
            border-radius: 5px; /* Rounded corners */
            font-size: 16px; /* Increased font size */
            transition: background-color 0.3s ease; /* Smooth transition */
        }

        .button:hover {
            background-color: #2980b9; /* Darker blue on hover */
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Portal Users Overview</h1>

    <table>
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>Portal Registered</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="user" items="${list}">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.email}</td>
                <td>${user.eventRegistered}</td>
                <td><a class="button" href="edituser/${user.id}">Edit</a></td>
                <td><a class="button" href="deleteuser/${user.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>

   <!-- <div class="button-container">
        <a class="button" href="userform">Add New User</a>
    </div> -->
</div>

</body>
</html>
