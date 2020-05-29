<html>
<head>
<title>Student profile</title>
</head>
<body bgcolor="lightseagreen">
<table align="center" width = "80" height = "50">
         <tr>
            <td><a href="index.html"><img src="companylogo_2019-04-400x400.png"  width="200" height="100"></a></td>
         </tr>
 </table>
 <h1 align=center><a href="index.html"><font size = "8"><font color = "red">WELCOME TO EXAMLY</font></font></a></h1>
  <h1 align=right><a href="message.jsp"><img src="notification-bell-pngrepo-com.png"  width="35" height="50"></a></h1>
  
<section>
    <table cellpadding="5" cellspacing="5" border="0">

      <%@page import="java.sql.*" %>
      <%@page import="Project.ConnectionProvider" %>
      <%try
      {
    	  String username=request.getParameter("username");
    	  Connection con = ConnectionProvider.getCon();
    	  Statement st=con.createStatement();
    	  ResultSet rs=st.executeQuery("select * from student where username= username and student.username='"+username+"'");
    	  if(rs.next())
    	  {
      %>
      <h6><font size="5"><font color ="maroon">HI </font></font></h6>
      <h6><font size="5"><font color ="maroon"><%=rs.getString(3) %></font></font></h6>
      <h6><font size="5"><font color ="maroon">WELCOME!!!</font></font></h6>
      	<tr><th>Name</th></tr>
          <td><%=rs.getString(3) %></td>
          <tr><th>Course Name</th></tr>
          <td><%=rs.getString(4) %></td>
          <tr><th>Branch Name</th></tr>
          <td><%=rs.getString(5) %></td>
          <tr><th>College Name</th></tr>
          <td><%=rs.getString(6) %></td>
          <tr><th>CGPA</th></tr>
          <td><%=rs.getString(7) %></td>
          <tr><th>Roll Number</th></tr>
          <td><%=rs.getString(8) %></td>
          </h4>
      <%}}
      catch(Exception e)
      {
      }
      %>
</table>
<style>
div {
  background-color: lightgrey;
  width: 300px;
  border: 10px solid green;
  padding: 50px;
  margin: 20px;
}
</style>
<div>You have enrolled in a course C programing<h1 align=center><a href="cprog.html"><font size = "4"><font color = "red">Enter course</font></font></a></h1></div>
<div>You have enrolled in a course java programing<h1 align=center><a href="jprog.html"><font size = "4"><font color = "voilet">Enter course</font></font></a></h1></div>
</section>
<center><h1><a href="index.html">Logout</a></h1></center>
</form>
</body>
</html>
