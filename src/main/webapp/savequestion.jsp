<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String a,b,c,d;
int e;
a=request.getParameter("t1");
b=request.getParameter("t2");
c=request.getParameter("t3");
d=request.getParameter("t4");
e=Integer.parseInt(request.getParameter("t5"));

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con;
con =DriverManager.getConnection("jdbc:mysql://localhost:3306/simpleminiproject","root","");

PreparedStatement ps = con.prepareStatement("insert into questionanswer (name,option1,option2,option3,answer) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
ps.executeUpdate();
out.println("<script>");
out.println("alert('Question Added Successfull')");
out.println("window.location.href='addquestion.jsp'");
out.println("</script>");

%>
</body>
</html>