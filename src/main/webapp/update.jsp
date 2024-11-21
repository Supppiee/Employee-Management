<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<style>
	* {
	background-color: #333;
	color: white;
	font-family: monospace;
}

body {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	height: 90vh;
	width: 95vw;
}

label {
	color: #e3b614;
	font-size: 20px;
}

input {
	border: 1px solid #666;
	font-size: 20px;
}
button{
	background-color: #e3b614;
		padding: 6px 25px;
		border: none;
		border-radius: 3px;
		color: black;
		margin-top: 30px;
}
table{
	margin-top: 30px;
}
	
</style>
</head>
<body>
	<form action="insert" align="center">
	<h1>Update the values</h1>
	<%employeeData emp=(employeeData)request.getAttribute("emp")%>
		<table cellspacing="10px">
			<tr>
				<td><label for="name">Name : </label></td>
				<td><input id="name" type="text" name="name" value="<%=emp.getName()%>"></td>
			</tr>

			<tr>
				<td><label for="email">Email : </label></td>
				<td><input id="email" type="email" name="email" value="<%=emp.getEmail()%>"></td>
			</tr>

			<tr>
				<td><label for="ph">Phone : </label></td>
				<td><input id="ph" type="number" name="phone" value="<%=emp.getPhone()%>"></td>
			</tr>

			<tr>
				<td><label for="ph">Salary : </label></td>
				<td><input id="ph" type="number" name="salary" value="<%=emp.getSalary()%>"></td>
			</tr>

		</table>
		<button>Submit</button>
	</form>
</body>
</html>