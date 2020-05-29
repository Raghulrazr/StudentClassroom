package Project;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminLoginAction")
public class AdminLoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AdminLoginAction() {
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminDAO cm=new AdminDAOImpl();
		String message1=request.getParameter("message");
		String login=request.getParameter("submit");
		Admin m=cm.getMessage(message1);
		if(login.equals("Send"))
	    {
			m.setMessage(message1);
	    	cm.insertAdmin(m);
	    	request.getRequestDispatcher("sendnotifi.html").forward(request, response);
	    }
	}

}
