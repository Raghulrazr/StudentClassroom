<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Here!!!</title>
</head>
<body bgcolor="MediumSlateBlue">
<table align="center" width = "100" height = "50">
         <tr>
            <td><a href="index.html"><img src="companylogo_2019-04-400x400.png"  width="200" height="100"></a></td>
         </tr>
 </table>
 <h1 align=center><a href="index.html"><font size = "10"><font color = "red">WELCOME TO EXAMLY</font></font></a></h1>
<form method="post" action="studentLoginAction">
	<table>
	<tr>
	<td><h3>Student Registration</h3></td>
	<td></td>
	</tr>
    <tr>
           <td>Name</td>
           <td><input type="text" name="name"></td>
    </tr>
    <tr>
           <td>Course</td>
           <td><input type="text" name="course"></td>
    </tr>
    <tr>
           <td>Branch</td>
           <td><input type="text" name="branch"></td>
    </tr>
    <tr>
           <td>College Name</td>
           <td><input type="text" name="college"></td>
    </tr>
    <tr>
           <td>CGPA</td>
           <td><input type="text" name="cgpa"></td>
    </tr>
    <tr>
           <td>RollNo</td>
           <td><input type="text" name="rollno"></td>
    </tr>
    <tr>
           <td>Username</td>
           <td><input type="text" name="username"></td>
    </tr>
    <tr>
           <td>Password</td>
           <td><input type="password" name="password"></td>
    </tr>
    <tr>
           <td>Confirm Password</td>
           <td><input type="password" name="password"></td>
    </tr> 
    <tr>
           <td><input type="submit" name="submit" value="Register"></td>
           <td></td>
    </tr>
    </table>
            </form>
            <center><h1><a href="index.html">Back</a></h1></center>
</body>
</html>