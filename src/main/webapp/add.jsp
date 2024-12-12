<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Record</title>
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
    <h1>Add Employee Record</h1>
    <form action="add" method="post">
        Name: <input type="text" name="name" required><br>
        Email: <input type="email" name="email" required><br>
        Mobile: <input type="number" name="mobile" required><br>
        Salary: <input type="number" name="salary" required><br>
        <button>Add</button>
    </form><br><br>
    <a href="home"><button>Back</button></a>
</div>
</body>
</html>
