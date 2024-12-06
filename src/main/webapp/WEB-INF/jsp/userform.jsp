<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WEB-INF/css/style.css">

<head>
    <meta charset="UTF-8">
    <title>Add New User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f7; /* Light blue-grey background */
            margin: 0;
            padding: 0;
            height: 100vh; /* Full viewport height */
            display: flex;
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
        }

        .form-container {
            background-color: #ffffff; /* White background for the form */
            padding: 30px; /* Increased padding */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            width: 400px; /* Fixed width for the form */
            text-align: center; /* Center the text */
        }

        h2 {
            color: #2c3e50; /* Dark grey-blue color for the heading */
            margin-bottom: 20px; /* Space below the heading */
        }

        .form-group {
            margin: 15px 0; /* Space between form groups */
        }

        label {
            display: block; /* Block display for labels */
            margin-bottom: 5px; /* Space below the label */
            text-align: left; /* Align label text to the left */
            color: #34495e; /* Dark grey text color for labels */
        }

        input[type="text"], input[type="password"], input[type="email"] {
            width: 100%; /* Full width for inputs */
            padding: 10px; /* Padding inside the input */
            border: 1px solid #d1d8e0; /* Light blue border */
            border-radius: 5px; /* Rounded corners */
            font-size: 16px; /* Increased font size */
            background-color: #f4f9fd; /* Very light blue background for inputs */
        }

        /* Button Styles */
        .button {
            display: inline-block;
            padding: 10px 20px; /* Padding for buttons */
            margin: 10px 0; /* Space above and below the button */
            background-color: #27ae60; /* Vibrant green background */
            color: white; /* White text color */
            text-decoration: none; /* No underline */
            border-radius: 5px; /* Rounded corners */
            font-size: 16px; /* Increased font size */
            transition: background-color 0.3s ease; /* Smooth transition */
        }

        .button:hover {
            background-color: #1e8449; /* Darker green on hover */
        }

        /* Styling for submit button */
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #27ae60; /* Same green background for submit */
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #1e8449; /* Darker green on hover */
        }
    </style>
</head>


<div class="form-container">
    <h2>Add New User</h2>

    <form:form method="post" action="${pageContext.request.contextPath}/save" modelAttribute="command">
        <table>
            <tr>
                <td><label for="username">Username:</label></td>
                <td><form:input path="username" id="username" /></td>
            </tr>
            <tr>
                <td><label for="password">Password:</label></td>
                <td><form:input path="password" type="password" id="password" /></td>
            </tr>
            <tr>
                <td><label for="email">Email:</label></td>
                <td><form:input path="email" id="email" /></td>
            </tr>
            <tr>
                <td><label for="eventRegistered">Portal Registered:</label></td>
                <td><form:input path="eventRegistered" id="eventRegistered" /></td>
            </tr>
        </table>

        <div class="button-container">
            <input type="submit" value="Save User" />
        </div>
    </form:form>
</div>
