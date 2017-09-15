<%@page import="com.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Profile Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="main.css">
<link rel="icon" href="" type="image/ico">
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	function validate() {
		var from = document.forms["myForm"]["from"];
		var to = document.forms["myForm"]["to"];
		if(from.value != to.value)
		{		
			document.getElementById("error").innerHTML="";
			document.getElementById("submit").disabled = false;
		}
		else
			{
			document.getElementById("error").innerHTML="From and to can't be same......";
			document.getElementById("submit").disabled = true;
			}
		}
</script>
</head>
<body>
	<% HttpSession sessionstat = request.getSession(false);
		if(session.getAttribute("name") == null )
		{
			request.getRequestDispatcher("login.jsp").include(request, response);
			out.print("<h1 style='color:#ff1a66;'>please login first....</h1>");
			
		}
		else
		{
			
			String name=(String)session.getAttribute("name");  
		
			%>
			<div class="container-fluid" id="d1">
		    <header  id="hd">
		      <div class="row" id="hd1">
		        <div class="col-md-3"><a href="index.jsp"><img src="images/busbooking.png" class="img-responsive center-block" height="100px" width="100px"></a></div>
		        <div id="hda" class="col-md-9 col-md-pull-1 text-center"><h1>Online travel portal</h1></div>
		      </div>
		      <ul class="nav nav-tabs">
		        <li role="presentation"><a href="index.jsp">Home</a></li>
		        <li role="presentation" class="active"><a href="profile.jsp">Profile</a></li>
		        <li role="presentation"><a href="#">Bookings</a></li>
		        <li class="navbar-right" role="presentation"><a href="logout.jsp">Logout</a></li>
		      </ul>  
		    </header>
		    <div class="row">
		    	
			<h1><span style="color: #ff1a66"><%= name%> welcome to bookings portal</span></h1>
		    </div>
		    
			<div class="col-md-6 col-md-offset-3 login_form pro-form">
			<form name="myForm" action="buses.jsp" method="post">
				 <div class="form-group row">
				 <div class="col-md-5">
				 	<select class="form-control" name="from" onchange="validate()">
		           		<option name="Form">From</option>
		           		<option value="Punganur">Punganur</option>
		           		<option value="Yanam">Yanam</option>
		           		<option value="Chennai">Chennai</option>
		           		<option value="Hyderabad">Hyderabad</option>
		            </select>
				 </div>
				 <div class="col-md-5">
				 	<select class="form-control" name="to" onchange="validate()">
		           		<option name="Form">To</option>
		           		<option value="Punganur">Punganur</option>
		           		<option value="Yanam">Yanam</option>
		           		<option value="Chennai">Chennai</option>
		           		<option value="Hyderabad">Hyderabad</option>
		            </select>
		          </div>
		          <div class="col-md-2">
		          	<button type="submit" class="btn btn-primary" id="submit">Submit</button>
		          </div>
			</form>
			<div id="error" style="color: red;"></div>
			</div>
			</div> 
			<%
		}
	%>
	
</body>
</html>