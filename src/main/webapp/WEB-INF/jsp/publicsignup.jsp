<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rythu Mitra Portal</title>
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            text-align: center;
            padding: 50px;
        }

        .btn-container {
            display: inline-block;
            margin: 20px;
        }

        .btn {
            background-color: #28a745;
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            margin: 10px;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #218838;
        }

        h1 {
            color: #333;
        }
    </style>
</head>
<body>

<h1>Welcome to Rythu Mitra Portal</h1>

<div class="btn-container">
    <!-- Buttons to redirect to the specific signup pages -->
    <a href="public/signup" class="btn">Public Signup</a>
    <a href="farmer/signup" class="btn">Farmer Signup</a>
    <a href="expert/signup" class="btn">Expert Signup</a>
</div>

</body>
</html>
