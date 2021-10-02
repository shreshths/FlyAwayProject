<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="javapackage.FlightBooking"%>
<%@ page import="javapackage.FlightSearch"%>
<%
    FlightBooking.personName = request.getParameter("pname");
    FlightBooking.email= request.getParameter("email");
    FlightBooking.phone= request.getParameter("phone");
    if (FlightBooking.personName.equals("")
            || FlightBooking.email.equals("")
            || FlightBooking.phone.equals("")) {
        out.println("Please enter valid passenger details");
    }
    else {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">Payment</h2>

	<form action="confirmation.jsp" method="post">
		Name on Card <br/> <input type="text" name="name_on_card">
		<br/><br/>Card Number <br/><input type="number" name="card_details">
		<br/><br/>
		Total  =  <%=FlightBooking.ticketPrice%> X <%=FlightSearch.noOfPersons%> persons = Rs.<%=FlightBooking.ticketPrice*FlightSearch.noOfPersons%>
		<br/><br/><input type="submit" value="Submit">
	</form>

</body>
</html>

<%
    }
%>