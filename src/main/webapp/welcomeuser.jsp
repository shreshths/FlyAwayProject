<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="servletpackage.Login"%>

<%
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
    if (Login.isLoggedIn) {
%>
	<h2>
		Welcome
		<%=Login.email%></h2>

	<form method="post" action="changepassword.jsp">
		<input type="submit" value="Change Password">
	</form>

	<table>
		<tr>
			<th>Flight ID</th>
			<th>Name</th>
			<th>Source</th>
			<th>Destination</th>
			<th>Day</th>
			<th>Ticket Price</th>
		</tr>

		<%
                    try{
                    	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb", "root", "root");
            			Statement statement = connection.createStatement();
                        String sql ="SELECT * FROM flights";
                        ResultSet resultSet = statement.executeQuery(sql);
                        while(resultSet.next()){
                %>
		<tr>
			<td><%=resultSet.getString("flight_id") %></td>
			<td><%=resultSet.getString("name") %></td>
			<td><%=resultSet.getString("source") %></td>
			<td><%=resultSet.getString("destination") %></td>
			<td><%=resultSet.getString("days") %></td>
			<td><%=resultSet.getString("ticket_price") %></td>
		</tr>
		<%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
		
                    }

                    else {
                        out.print("You must Login first");
                    }
                %>
	</table>


</body>
</html>