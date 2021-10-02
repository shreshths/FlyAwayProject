package servletpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javapackage.FlightSearch;

public class SearchFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		FlightSearch.bookingDate = request.getParameter("date");
		FlightSearch.source = request.getParameter("source");
		FlightSearch.destination = request.getParameter("destination");
		FlightSearch.noOfPersons = Integer.parseInt(request.getParameter("persons"));

		if (FlightSearch.bookingDate.equals("")) {
			PrintWriter out = response.getWriter();
			out.println("Invalid date");
		} else {
			FlightSearch.bookingDay = getDay(FlightSearch.bookingDate);
			response.sendRedirect("results.jsp");
		}
	}

	public String getDay(String dateInp) {
		LocalDate localDate = LocalDate.parse(dateInp);
		return localDate.getDayOfWeek().toString();
	}
}
