<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String a,b,c,d;
a=request.getParameter("t1");
b=request.getParameter("t2");
c=request.getParameter("t3");
d=request.getParameter("t4");

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con;
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/simpleminiproject","root","");

if(c.equals(d))
{
PreparedStatement ps = con.prepareStatement("insert into studentinfo (username,email,pass,cpass)values('"+a+"','"+b+"','"+c+"','"+d+"')");
ps.executeUpdate();
out.println("<script>");
out.println("alert('Student Registration Successfull')");
out.println("window.location.href='Studreg.html'");
out.println("</script>");
}
else
{
	out.println("<script>");
	out.println("alert('password and confirm password not match')");
	out.println("window.location.href='Studreg.html'");
	out.println("</script>");
}
%>

</body>
</html>