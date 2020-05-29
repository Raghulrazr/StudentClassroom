package Project;
import java.sql.*;
public class ConnectionProvider {
public static Connection getCon()
{
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3305/project1","root","9985@raghuls");
		return con;
	}
	catch(Exception e)
	{
		System.out.println(e);
		return null;
	}
}
}
