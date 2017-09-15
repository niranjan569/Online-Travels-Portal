<%@page import="com.RegisterDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="u" class="com.User">
		<jsp:setProperty property="*" name="u"/>  
	</jsp:useBean>
	
	<%
		int status=RegisterDao.register(u);
		if(status>0)
		{
			response.sendRedirect("login.jsp");
		}else{
			out.write("<span style='color:red;font-size:20px;'><center><b>User already registered</b></center></span>");
	%>
		<jsp:include page="register.jsp"></jsp:include>
	<% 
		}
	%>
	
</body>
</html>