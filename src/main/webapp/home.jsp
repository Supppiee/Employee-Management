<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
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

    /* Message styles */
    h3 {
        font-size: 1.2rem;
        margin: 10px 0;
    }

    .success {
        color: green;
    }

    .failure {
        color: red;
    }

    /* Button styles */
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
</style>
</head>
<body>
<div class="container">
    <h1>EMPLOYEE MANAGEMENT SYSTEM</h1>
    <div>
    <h3 class="success">${success}</h3>
    <h3 class="failure">${failure}</h3>
    <a href="add"><button>Add Record</button></a>
    <a href="fetch"><button>Fetch Records</button></a>
    <a href="search"><button>Search</button></a>
    </div>
    
</div>
</body>
</html>
