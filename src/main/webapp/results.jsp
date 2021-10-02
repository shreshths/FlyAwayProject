<%@page import="java.sql.*"%>
<%@ page import="javapackage.FlightSearch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2 align="center">Results</h2>

	<table>
		<tr>
			<th>Flight</th>
			<th>Source</th>
			<th>Destination</th>
			<th>Date</th>
			<th>Ticket Price</th>
			<th>Select</th>
		</tr>
		<%
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb", "root", "root");
			Statement statement = connection.createStatement();
			String query = FlightSearch.getQuery();
			ResultSet resultSet = statement.executeQuery(query);
			while (resultSet.next()) {
		%>
		<tr>
			<td><%=resultSet.getString("name")%></td>
			<td><%=resultSet.getString("source")%></td>
			<td><%=resultSet.getString("destination")%></td>
			<td><%=FlightSearch.bookingDate%></td>
			<td><%=resultSet.getString("ticket_price")%></td>
			<td>
				<form action="booking.jsp" method="post">
					<input type="hidden" name="name"
						value="<%=resultSet.getString("name")%>"> <input
						type="hidden" name="ticket_price"
						value="<%=resultSet.getString("ticket_price")%>"> <input
						type="hidden" name="flight_id"
						value="<%=resultSet.getString("flight_id")%>"> <input
						type="submit" value="Book">
				</form>
			</td>
		</tr>
		<%
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>

	</table>


</body>
</html>