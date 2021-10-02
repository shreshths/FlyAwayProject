package javapackage;

public class FlightSearch {

	public static String bookingDate;
	public static String bookingDay;
	public static String source;
	public static String destination;
	public static int noOfPersons;
	
	public static String getQuery() {
        return "SELECT * FROM flights WHERE source = '"+source+"' AND destination='"+destination+"' AND days='"+bookingDay+"'";
}
}
