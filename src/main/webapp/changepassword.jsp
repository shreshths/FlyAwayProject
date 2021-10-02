<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="servletpackage.Login"%>
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
                <form action="ChangePassword" method="post">
                        <input type="password" name="passwordLogin" placeholder="Enter a new password">
                        
                    <input type="submit" value="Submit">
                </form>
            <%
            }
            else {
                out.print("You must Login first");
            }
            %>

</body>
</html>