<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javapackage.FlightSearch" %>
<%@ page import="javapackage.FlightBooking" %>
<%
    FlightBooking.nameOnCard = request.getParameter("name_on_card");
    FlightBooking.cardNo = request.getParameter("card_details");
    if (FlightBooking.nameOnCard.equals("") || FlightBooking.cardNo.equals("")) {
        out.println("Card details are not valid");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2>Confirmed</h2>
	<h4><%=FlightSearch.source%> to <%=FlightSearch.destination%> | <%=FlightSearch.bookingDate%> (<%=FlightSearch.bookingDay%>)</h4>
        <%=FlightBooking.flightId%> - <%=FlightBooking.flightName%> (Passengers <%=FlightSearch.noOfPersons%>)<br>
        <br>
        <h3>Passenger Details</h3>
        <h3>Name: <%=FlightBooking.personName%> <br/> Email: <%=FlightBooking.email%> <br/> Phone: <%=FlightBooking.phone%></h3>
        <br>
        <h3>Payment Details</h3>
        <h4>Paid By: <%=FlightBooking.nameOnCard%> <br/> Card No: <%=FlightBooking.cardNo%></h4><br>
<h2 align="right">Amount Paid: &#8377;<%=FlightSearch.noOfPersons*FlightBooking.ticketPrice%></h2><br><br>

</body>
</html>