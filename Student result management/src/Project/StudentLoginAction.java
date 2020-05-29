package Project;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/studentLoginAction")
public class StudentLoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public StudentLoginAction() {
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudentDAO cd=new StudentDAOImpl();
    String userName=request.getParameter("username");
    String password=request.getParameter("password");
    String login=request.getParameter("submit");
    Student c=cd.getStudent(userName, password);
    if(login.equals("Login") && c!=null && c.getName()!=null)
    {
    	request.getRequestDispatcher("StudentProfile.jsp").forward(request, response);
    }
    else if(login.equals("Register"))
    {
    	c.setUsername(userName);
    	c.setPassword(password);
    	c.setName(request.getParameter("name"));
    	c.setCourse(request.getParameter("course"));
    	c.setBranch(request.getParameter("branch"));
    	c.setCollege(request.getParameter("college"));
    	c.setCgpa(request.getParameter("cgpa"));
    	c.setRollno(request.getParameter("rollno"));
    	cd.insertStudent(c);
    	request.getRequestDispatcher("studentLogin.html").forward(request, response);
    }
    else
    {
    	request.getRequestDispatcher("errorStudentLogin.html").forward(request, response);
    }
	}
}
