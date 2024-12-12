<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Record</title>
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

    /* Header styles */
    h1 {
        color: #4CAF50;
        font-size: 2.5rem;
        margin-bottom: 20px;
    }

    /* Form styles */
    form {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 400px;
    }

    input[type="text"], input[type="email"], input[type="number"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 1rem;
    }

    input[type="text"]:focus, input[type="email"]:focus, input[type="number"]:focus {
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
        transition: background-color 0.3s ease;
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
    <h1>Edit Employee Record</h1>
    <form action="update" method="post">
        ID: <input type="number" name="id" value="${emp.id}" readonly><br>
        Name: <input type="text" name="name" value="${emp.name}"><br>
        Email: <input type="email" name="email" value="${emp.email}"><br>
        Mobile: <input type="number" name="mobile" value="${emp.mobile}"><br>
        Salary: <input type="number" name="salary" value="${emp.salary}"><br>
        <button type="submit">Update</button>
    </form><br><br>
    <a href="fetch"><button>Back</button></a>
</div>
</body>
</html>
