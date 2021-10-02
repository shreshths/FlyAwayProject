<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="login.jsp">Admin Login</a>
	<br />

	<form action="SearchFlightServlet">

		<br/><br/>Date<br/> <input type="date" name="date">
		<br/><br/>Source<br/>
		<select name="source">
			<option value="India">India</option>
			<option value="USA">USA</option>
			<option value="UK">UK</option>
		</select>
		<br/><br/>Destination<br/>
		<select name="destination">
			<option value="India">India</option>
			<option value="USA">USA</option>
			<option value="UK">UK</option>
		</select>
		<br/><br/>No of Persons<br/>
		<select name="persons">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select>
		<br/><br/><input type="submit" value="Search" />
	</form>
</body>
</html>