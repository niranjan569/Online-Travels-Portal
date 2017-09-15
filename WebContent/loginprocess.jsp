<%@page import="com.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.User" />

	<jsp:setProperty property="*" name="obj" />
	<%  
		boolean status= LoginDao.validate(obj);  
		if(status){  
			session.setAttribute("name",LoginDao.getName(obj.getEmail()));
			response.sendRedirect("profile.jsp");
		}  
		{  
			out.print("<span style='color:red;font-size:20px;'><center><b>Sorry email or password error.....</b></center></span>");  
			%>  
			<jsp:include page="login.jsp"></jsp:include>  
			<%  
			}  
			%>  

</body>
</html>