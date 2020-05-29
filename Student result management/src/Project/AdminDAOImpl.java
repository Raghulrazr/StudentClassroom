package Project;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class AdminDAOImpl implements AdminDAO {
	static Connection con;
	static PreparedStatement ps;

	@Override
	public int insertAdmin(Admin m) {
		int status =0;
		try
		{
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("insert into message value(?)");
			ps.setString(1, m.getMessage());
			status =ps.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}
	public Admin getMessage(String message)
	{
		Admin m= new Admin();
		return m;
	}
}
