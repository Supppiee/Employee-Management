<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Result</title>
<style>
    /* General page styles */
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        color: #333;
        margin: 0;
        padding: 0;
    }

    /* Centering content */
    .container {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
        padding: 20px;
    }

    /* Header styling */
    h1 {
        color: #4CAF50;
        font-size: 2.5rem;
        margin-bottom: 30px;
    }

    /* Card styling */
    .card {
        background-color: #ffffff;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 450px;
        text-align: left;
        margin-bottom: 20px;
    }

    .card p {
        font-size: 1.1rem;
        margin: 10px 0;
        color: #555;
    }

    .card .label {
        font-weight: bold;
        color: #4CAF50;
    }

    /* Profile image styling (increased size) */
    .profile-image {
        width: 120px;  /* Increased size */
        height: 120px; /* Increased size */
        border-radius: 50%;
        background-color: #4CAF50;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-bottom: 20px;
        font-size: 2.5rem;  /* Adjusted font size for the letter */
        color: white;
        font-weight: bold;
        margin-left: auto;
        margin-right: auto;
    }

    /* Button styling */
    button {
        background-color: #4CAF50;
        color: white;
        padding: 12px 25px;
        border: none;
        border-radius: 5px;
        font-size: 1.1rem;
        cursor: pointer;
        transition: background-color 0.3s ease;
        text-align: center;
        margin-top: 30px;
    }

    button:hover {
        background-color: #45a049;
    }

    a {
        text-decoration: none;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Employee Search Result</h1>
    <c:if test="${not empty employee}">
        <div class="card">
            <!-- Dummy profile image -->
            <div class="profile-image">
                <!-- Access first letter of the employee name -->
                <span>${employee.name.substring(0, 1)}</span>
            </div>
            <p><span class="label">Name:</span> ${employee.name}</p>
            <p><span class="label">Email:</span> ${employee.email}</p>
            <p><span class="label">Phone:</span> ${employee.mobile}</p>
            <p><span class="label">Salary:</span> ${employee.salary}</p>
        </div>
    </c:if>
    <a href="search"><button>Back</button></a>
</div>
</body>
</html>
