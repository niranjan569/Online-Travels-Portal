<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="main.css">
<link rel="icon" href="images/audi.png" type="image/ico">
<link href="https://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.1.1.min.js"></script>
<title>Login page</title>
</head>
<body>
	<div class="container-fluid" id="d1">
			<div class="row" id="hd1">
				<div class="col-md-3">
					<a href="index.jsp"><img src="images/busbooking.png"
						class="img-responsive center-block" height="100px" width="100px"></a>
				</div>
				<div id="hda" class="col-md-9 col-md-pull-1 text-center">
					<h1>Online travel portal</h1>
				</div>
			</div>
			<ul class="nav nav-tabs">
				<li role="presentation" class="active"><a href="index.jsp">Home</a></li>
				<li role="presentation"><a href="#">About Us</a></li>
				<li role="presentation"><a href="#">Contact Us</a></li>
			</ul>
		<div class="row sec">
			<div class="col-md-3">
				<img src="images/download.png" height="200px" width="200px">
			</div>
			<div class="col-md-6 login_form">
				<form action="loginprocess.jsp">
					<div class="form-group">
						<label>Email address</label> <input
							type="email" class="form-control" name="email"
							placeholder="Email" required>
					</div>
					<div class="form-group">
						<label>Password</label> <input
							type="password" class="form-control" name="password"
							placeholder="Password" required>
					</div>
					<button type="submit" id="btn" class="btn btn-primary btn-md">Login</button>
					<a href="register.jsp" class="btn btn-primary btn-md"
						role="button">Signup</a>
				</form>
			</div>
			<div class="col-md-3">
				<img src="images/audi.png" height="200px" width="200px">
			</div>
		</div>
	</div>
</body>
</html>