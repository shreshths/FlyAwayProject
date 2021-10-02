<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="servletpackage.Login"%>
<%
Login.isLoggedIn = false;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="Login" method="post">
		Email <input type="email" name="emailLogin"
			placeholder="admin@flyaway.com"> <br> Password<input
			type="password" name="passwordLogin" placeholder="1234"> <br>
		<input type="submit" value="Submit">
	</form>

</body>
</html>