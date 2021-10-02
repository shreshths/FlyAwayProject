package servletpackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static boolean isLoggedIn = false;
	public static String password = "1234";
	public static String email = "admin@flyaway.com";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		String email = request.getParameter("emailLogin");
		String pass = request.getParameter("passwordLogin");

		if (email.equals(Login.email) && pass.equals(Login.password)) {
			isLoggedIn = true;
			response.sendRedirect("welcomeuser.jsp");
		} else {
			isLoggedIn = false;
			out.println("Login Failed : Incorrect email or Password");
		}
		out.close();
	}
}
