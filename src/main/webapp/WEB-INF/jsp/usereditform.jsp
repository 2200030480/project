<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WEB-INF/css/style.css">

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit User - Rythu Mitra Portal</title>
    <style>
        /* Body and background styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #e6f7ff; /* Light blue background */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }

        /* Container for the form */
        .container {
            background-color: #fff; /* White background for form */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            width: 400px;
            text-align: center; /* Center the text */
        }

        /* Heading styles */
        h2 {
            color: #333; /* Dark text color */
            margin-bottom: 20px;
        }

        /* Table styling */
        table {
            width: 100%; /* Full width */
            margin: 20px 0;
        }

        /* Input field styling */
        input[type="text"], input[type="password"], input[type="email"] {
            width: 95%; /* Slightly less than full width */
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Button container styling */
        .button-container {
            margin-top: 20px;
        }

        /* Submit button styling */
        input[type="submit"] {
            width: 100%;
            padding: 15px;
            background-color: #007bff; /* Blue background */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        /* Button hover effect */
        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Edit User</h2>

    <form:form method="post" action="${pageContext.request.contextPath}/editsave" modelAttribute="command">
        <form:hidden path="id" />
        <table>
            <tr>
                <td>Username:</td>
                <td><form:input path="username" /></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><form:input path="password" type="password" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input path="email" type="email" /></td>
            </tr>
            <tr>
                <td>Portal Registered:</td>
                <td><form:input path="eventRegistered" /></td>
            </tr>
        </table>

        <div class="button-container">
            <input type="submit" value="Save Changes" />
        </div>
    </form:form>
</div>

</body>
</html>
