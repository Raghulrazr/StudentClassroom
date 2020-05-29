<html>
<head>
<title>Registered Student</title>
</head>
<body bgcolor="floralWhite">
<table align="center" width = "100" height = "50">
         <tr>
            <td><a href="index.html"><img src="companylogo_2019-04-400x400.png"  width="200" height="100"></a></td>
         </tr>
 </table>
 <h1 align=center><a href="index.html"><font size = "10"><font color = "red">WELCOME TO EXAMLY</font></font></a></h1>
<section>
    <table cellpadding="5" cellspacing="5" border="0">
      <thead>
        <tr>
        <th>Mesaages</th>
        </tr>
      </thead>
      <tbody>
      <%@page import="java.sql.*" %>
      <%@page import="Project.ConnectionProvider" %>
      <%try
      {
    	  Connection con = ConnectionProvider.getCon();
    	  Statement st=con.createStatement();
    	  ResultSet rs=st.executeQuery("select *from message");
    	  while(rs.next())
    	  {
      %>
        <tr>
          <td><%=rs.getString(1) %></td>

        </tr>
      </tbody>
      <%}}
      catch(Exception e)
      {
      }
      %>
    </table>
</section>
<center><h1><a href="index.html">Back</a></h1></center>
</body>
</html>