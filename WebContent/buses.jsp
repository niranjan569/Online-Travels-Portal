<%@page import="com.Buses"%>
<%@page import="java.util.List"%>
<%@page import="com.BusesDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="profile.jsp"></jsp:include><br>
	<%-- <jsp:useBean id="bus" class="com.Buses">
		<jsp:setProperty property="*" name="bus" />
	</jsp:useBean> --%>
	<%
		String from = request.getParameter("from");
		String to = request.getParameter("to");
	%>

	<%
		List<Buses> list = BusesDao.fetchBuses(from, to);
		request.setAttribute("buslist", list);
		if (list.isEmpty()) {
	%>
	<span style="color: #ff1a66"><h1>No buses from source to destination</h1></span>
	<%
		} else {
	%>

	<div class="bus-table">
		<table border="2" width="100%"
			class="table table-bordered table-hover">
			<tr class="active">
				<th>From</th>
				<th>To</th>
				<th>Departure</th>
				<th>Arrival</th>
				<th>Service No</th>
				<th></th>
			</tr>
			<c:forEach items="${buslist}" var="u">
				<tr>
					<td>${u.from}</td>
					<td>${u.to}</td>
					<td>${u.departure}</td>
					<td>${u.arrival}</td>
					<td>${u.serviceNo}</td>
					<td><a href="book.jsp?serviceNo=+${u.serviceNo}"
						class="btn btn-primary btn-md" role="button">Book</a></td>
				</tr>
			</c:forEach>
		</table>

	</div>
	<%
		}
	%>
</body>
</html>