package Project;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

public class StudentDAOImpl implements StudentDAO {
	static Connection con;
	static PreparedStatement ps;
	@Override
	public int insertStudent(Student c) {
		int status =0;
		try
		{
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("insert into student value(?,?,?,?,?,?,?,?)");
			ps.setString(1, c.getUsername());
			ps.setString(2, c.getPassword());
			ps.setString(3, c.getName());
			ps.setString(4, c.getCourse());
			ps.setString(5, c.getBranch());
			ps.setString(6, c.getCollege());
			ps.setString(7, c.getCgpa());
			ps.setString(8, c.getRollno());
			status =ps.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}

	@Override
	public Student getStudent(String userid, String pass) {
		Student c=new Student();
		try
		{
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("select *from student where username=? and password=?");
			ps.setString(1,userid);
			ps.setString(2, pass);
			
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				c.setUsername(rs.getString(1));
				c.setPassword(rs.getString(2));
				c.setName(rs.getString(3));
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return c;
	}

}
