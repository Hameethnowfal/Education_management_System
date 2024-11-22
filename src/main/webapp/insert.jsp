<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
		fieldset{
		width:45%;
		margin-left:30%;
		margin-right:40px;
		border-color:black;
		background-color:beige;
		}
		body{
		background-color:skyblue;
		}
</style>
	<script type="text/javascript">
	function loginValidate(){ 
		var Id=document.getElementById("Id").value;
		var name=document.getElementById("name").value;
		var roll=document.getElementById("roll").value;
		var num=document.getElementById("number").value;
		var date=document.getElementById("date").value;
		var id=Id.trim().length;
		var nm=name.trim().length;
		var rl=roll.trim().length;
		var no=num.trim().length;
		var dt=date.trim().length;
		var sl=sal.trim().length;
		if(id == ""){
			alert("Please enter employee ID");
			return false;
		}
		if(nm == ""){
			alert("Please enter employee name");
			return false;
		}
		if(rl == ""){
			alert("Please enter roll of the employee");
			return false;
		}
		if(no == ""){
			alert("Please enter no of employee");
			return false;
		}
		if(dt == ""){
			alert("Please enter employee's joining date);
			return false;
		}
	}
	</script>
<meta charset="UTF-8">
<title>Insert detail</title>
</head>
<body>

<fieldset>
	<center>
		<legend><h2><b>Fill Details to Update</b></h2></legend>
		<form action="Insertpage" onsubmit="return loginValidate()" method="post"/>
	<label for="Identity">Id : </label>
	<input type ="Identity" id="Id" name="Id"/><br><br>
	<label for="name">Name : </label>
	<input type="name" id="name" name="name"/><br><br>
	<label for="roll">Roll : </label>
	<input type="Roll" id="roll" name="roll"/><br><br>
	<label for="Number">Number : </label>
	<input type="Number" id="number" name="number"/><br><br>
	<label for="Date">Joining date : </label>
	<input type="Date" id="date" name="date"/><br><br>
		<input type="Submit" value="Update"/>
	</center>
</form >
</fieldset>
</body>
</html>