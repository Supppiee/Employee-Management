<%@page isELIgnored="false" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Records</title>
<style>
    /* General page styles */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #eef2f3;
        color: #333;
        margin: 0;
        padding: 0;
    }

    /* Centering content */
    .container {
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: center;
        padding: 20px;
    }

    /* Header styles */
    h1 {
        color: #2c3e50;
        font-size: 2.5rem;
        margin-bottom: 20px;
    }

    h3 {
        color: #27ae60;
        font-size: 1.2rem;
    }

    /* Table styles */
    table {
        width: 90%;
        border-collapse: collapse;
        margin: 20px 0;
        background-color: #ffffff;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        text-align: left;
    }

    th, td {
        padding: 15px;
        border: 1px solid #ddd;
    }

    th {
        background-color: #34495e;
        color: white;
        text-align: center;
    }

    td {
        background-color: #f7f9fa;
        color: #2c3e50;
        text-align: center;
    }

    tr:nth-child(even) td {
        background-color: #ecf0f1;
    }

    tr:hover td {
        background-color: #d5dbdb;
    }

    /* Button styles */
    button {
        background-color: #2ecc71;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        font-size: 1rem;
        cursor: pointer;
        margin: 5px;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #27ae60;
    }

    a {
        text-decoration: none;
    }

    /* Back button styling */
    .back-btn {
        margin-top: 20px;
    }

    /* Responsive adjustments */
    @media (max-width: 768px) {
        table {
            font-size: 0.9rem;
        }

        th, td {
            padding: 10px;
        }

        button {
            padding: 8px 16px;
        }
    }
</style>
</head>
<body>
<div class="container">
    <h1>Employee Records Table</h1>
    <h3>${success}</h3>
    <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Salary</th>
            <th>Delete</th>
            <th>Edit</th>
        </tr>
        <x:forEach var="emp" items="${list}">
        <tr>
            <td>${emp.name}</td>
            <td>${emp.email}</td>
            <td>${emp.mobile}</td>
            <td>${emp.salary}</td>
            <td><a href="delete?id=${emp.id}"><button>Delete</button></a></td>
            <td><a href="edit?id=${emp.id}"><button>Edit</button></a></td>
        </tr>
        </x:forEach>
    </table>
    <a href="home" class="back-btn"><button>Back</button></a>
</div>
</body>
</html>
