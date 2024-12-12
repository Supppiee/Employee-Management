<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Employee</title>
<style>
    /* General page styles */
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        color: #333;
        margin: 0;
        padding: 0;
    }

    /* Centering the content */
    .container {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        padding: 20px;
    }

    /* Form styles */
    form {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 400px;
        text-align: center;
    }

    input[type="number"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin: 10px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 1rem;
    }

    input[type="number"]:focus {
        border-color: #4CAF50;
        outline: none;
    }

    button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        font-size: 1.1rem;
        cursor: pointer;
        margin: 10px;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #45a049;
    }

    a {
        text-decoration: none;
    }

    /* Align Back button */
    .back-button {
        display: inline-block;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Search Employee</h1>
    <form action="search" method="post">
        <label for="id">Enter an ID:</label><br>
        <input type="number" id="id" name="id" required><br>
        <button type="submit">Search</button>
        <a href="home" class="back-button"><button type="button">Back</button></a>
    </form>
</div>
</body>
</html>
