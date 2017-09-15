<%@page import="com.BookingsDao"%>
<%@page import="com.BusesDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="main.css">
<link rel="icon" href="" type="image/ico">
<link href="https://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.1.1.min.js"></script>
</head>
<body>
	<%
		HttpSession sessionstat = request.getSession(false);
		if (session.getAttribute("name") == null) {
			request.getRequestDispatcher("login.jsp").include(request, response);
			out.print("<h1 style='color:#ff1a66;'>please login first....</h1>");

		} else {
			int serNo = Integer.parseInt(request.getParameter("serviceNo").trim());
			String name = (String)session.getAttribute("name");
			BookingsDao.book(name,serNo);
	%>
	
	<div class="container-fluid" id="d1">
		<div class="row" id="hd1">
			<div class="col-md-3">
				<a href="#"><img src="images/busbooking.png"
					class="img-responsive center-block" height="100px" width="100px"></a>
			</div>
			<div id="hda" class="col-md-9 col-md-pull-1 text-center">
				<h1>Online travel portal</h1>
			</div>
		</div>
		<nav class="navbar">
		<ul class="nav nav-tabs">
			<li role="presentation"><a href="index.jsp">Home</a></li>
			<li role="presentation"><a href="profile.jsp">Profile</a></li>
			<li role="presentation" class="active"><a href="#">Bookings</a></li>
			<li class="navbar-right" role="presentation"><a
				href="logout.jsp">Logout</a></li>
		</ul>
		</nav>
		<div class="row" align="center" style="color: #ff1a66;">
			<h1>
				Bus booked with service no <%= serNo %></h1>
			<h1>Seat number will be confirmed later</h1>
		</div>		
	</div>
	<%
		}
	%>
</body>
</html>