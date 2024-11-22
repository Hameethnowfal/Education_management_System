<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
background-color:Skyblue;
}
</style>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
<form action="insert.jsp">
	<table border="2px" align="center" style="background-color:beige">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Roll</th>
			<th>Number</th>
			<th>date_of_joining</th>
			<th colspan="2"><a href='insert.jsp'>Click to Add Employee</a></th>
		</tr>
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_table", "root", "L0v34ll@222");
		Statement stmt = con.createStatement();

		ResultSet rs = stmt.executeQuery("select * from employees");

		int flag = 0;
		while (rs.next()) {
			String Id = rs.getString("Id");
			String Name = rs.getString("Name");
			String Roll = rs.getString("Roll");
			String num = rs.getString("num");
			String date = rs.getString("date_of_joining");
			
			String updateurl = "update.jsp?Id="+Id+"&Name="+Name+"&Roll="+Roll+"&num="+num+"&date="+date;
			flag=1;
		%>
		<tr>
			<td><%=Id%></td>
			<td><%=Name%></td>
			<td><%=Roll%></td>
			<td><%=num%></td>
			<td><%=date%></td>
			<td><a href="<%=updateurl%>">Edit</a></td>
	        <td><a href="Deletepage?Id='<%=Id%>'">Delete</a></td>
		</tr>
		<%
		}
		Cookie ck[]=request.getCookies();
		%>
	</table>
	</form>
</body>
</html>