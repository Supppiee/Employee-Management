<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="servlet_crud.employeeData"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="UTF-8">
<title>fetch</title>
<style>
	*{
		background-color: #333;
		color: white;
		font-family: monospace;
	}
	#delete{
		padding: 4px 6px;
		background-color: red;
		border: none;
		border-radius: 2px;
		color: white;
	}
	#back{
		background-color: #e3b614;
		padding: 6px 25px;
		border: none;
		border-radius: 3px;
		color: black;
		margin-top: 30px;
	}
	#edit{
		padding: 4px 6px;
		background-color: blue;
		border: none;
		border-radius: 2px;
		color: white;
	}
	th{
		color: #e3b614;
	}
	h1{
		margin-top: 40px;
	}
	
	
	table{
		background-color: #666;
		margin-top: 60px
	}
	
</style>
</head>
<body>
	<div align="center">
		<h1>Employee Details</h1>
		<%
		List<employeeData> records = (List<employeeData>) request.getAttribute("records");
		%>
		<table border="1" cellpadding="10">
			<tr>
				<th>Name</th>
				<th>Mobile</th>
				<th>Email</th>
				<th>Salary</th>
				<th>Delete</th>
				<th>Edit</th>
			</tr>
			<%
				for(employeeData record: records){
			%>
			<tr>
				<td><%=record.getName()%></td>
				<td><%=record.getPhone()%></td>
				<td><%=record.getEmail()%></td>
				<td><%=record.getSalary()%></td>
				<td><a href="delete?id=<%=record.getID()%>"><button id="delete">Delete</button></td></a>
				<td><a href="edit?id=<%=record.getID()%>"><button id="edit">Edit</button></a></td>
			</tr>
			<%
			}
			%>
		</table><br>
		<a href="index.html"><button id="back">Back</button></a>
	</div>
</body>
</html>