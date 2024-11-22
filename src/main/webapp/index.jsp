<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
		fieldset{
		width:45%;
		margin-left:27%;
		border-color:black;
		background-color:beige;
		}
		body{
		background-color:skyblue;
		}
	</style>
	<script type="text/javascript">
	function loginValidate(){ 
		var user=document.getElementById("user").value;
		var pwd=document.getElementById("pwd").value;
		var un=user.trim().length;
		var pw=pwd.trim().length;
		if(un == ""){
			alert("Please enter User ID");
			return false;
		}
		if(pw == ""){
			alert("Please enter password");
			return false;
		}
	}
	</script>
<meta charset="UTF-8">
<title>Login page</title>
</head>
<body id="body">
<fieldset>
	<center>
		<legend><h2><b>Login Page</b></h2></legend>
<form action="LoginPage" onsubmit="return loginValidate()" method="get"/>
	<label for="un">Username : </label>
	<input type ="username" id="user" name="name"/><br><br>
	<label for="pw">Password : </label>
	<input type="password" id="pwd" name="pwd"/><br><br>
	<input type="Submit" value="Login"/>
	</center>
</form >
</fieldset>
</body>
</html>