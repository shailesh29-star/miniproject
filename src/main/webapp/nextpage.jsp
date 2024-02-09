<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
String x,y;
x=request.getParameter("t1");
y=request.getParameter("t2");

if (x.equals("admin") && y.equals("admin@123"))
{
	out.println("<script>");
	out.println("alert ('login Succefull')");
	out.println("window.location.href='dash.jsp'");
	out.println("</script>");
}

else
{
	out.println("<script>");
	out.println("alert ('login faild')");
	out.println("window.location.href='login.html'");
	out.println("</script>");
}

 %>


</body>
</html>