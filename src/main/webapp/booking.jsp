<%@ page import="javapackage.FlightBooking"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
FlightBooking.flightId = request.getParameter("flight_id");
FlightBooking.ticketPrice = Integer.parseInt(request.getParameter("ticket_price"));
FlightBooking.flightName = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">Registration</h2>

	<form action="payment.jsp" method="post">
		Passenger Name <br /> <input type="text" name="pname"> <br />
		<br />Email address <br /> <input type="email" name="email"> <br />
		<br />Phone <br /> <input type="number" name="phone"> <br />
		<br /> <input type="submit" value="Submit">
	</form>


</body>
</html>