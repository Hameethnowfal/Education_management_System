<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
fieldset {
	width: 45%;
	margin-left: 27%;
	border-color: black;
	background-color: beige;
	text-align: center;
}
body{
	background-color:skyblue;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String Id = request.getParameter("Id");
	String Name = request.getParameter("Name");
	String Roll = request.getParameter("Roll");
	String num = request.getParameter("num");
	String date = request.getParameter("date");
	%>
	<fieldset>
		<form action="Updatepage?Id=<%=Id%>" method="Post">

			<br>
			<br>
			<label for="Identity">Id : </label>
			<input id="Id" name="Id" value="<%=Id%>"><br>
			
			<br> <label for="name">Name : </label>
			<input id="name" name="name" value="<%=Name%>" /><br>
			
			<br> <label for="roll">Roll : </label> 
			<input id="roll" name="roll" value="<%=Roll%>" /><br>
			
			<br> <label>Number : </label> 
			<input type="tel" id="number" name="number" value="<%=num%>" /><br>
			
			<br> <label for="date">Joining date : </label>
			<input type="date" id="date" name="date" value="<%=date%>" /><br>
			
			<br><label for="Identity">Id : </label>
			<input id="Id" name="Id" value="<%=Id%>"><br>
			
			<br> <input type="submit" value="Update" />
		</form>
	</fieldset>
</body>
</html>