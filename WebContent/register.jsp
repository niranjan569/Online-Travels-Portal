<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Registration Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="main.css">
<link rel="icon" href="" type="image/ico">
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	function recheckPass() {
		var pass1 = document.forms["myForm"]["password"];
		var pass2 = document.forms["myForm"]["rePassword"];
		if(pass1.value != pass2.value)
		{		
			pass2.style.backgroundColor ="#ff6666";
			document.getElementById("submit").disabled = true;
		}
		else
			{
			pass2.style.backgroundColor ="#66cc66";
			document.getElementById("submit").disabled = false;
			}
		}
</script>
</head>
<body>
	<div class="container-fluid" id="d1">
    <header  id="hd">
      <div class="row" id="hd1">
        <div class="col-md-3"><a href="index.jsp"><img src="images/busbooking.png" class="img-responsive center-block" height="100px" width="100px"></a></div>
        <div id="hda" class="col-md-9 col-md-pull-1 text-center"><h1>Online travel portal</h1></div>
      </div>
      <ul class="nav nav-tabs">
        <li role="presentation" class="active"><a href="index.jsp">Home</a></li>
        <li role="presentation"><a href="#">About Us</a></li>
		<li role="presentation"><a href="#">Contact Us</a></li>
      </ul>
    </header>
    <section class="row sec">
      <div class="col-md-6 col-md-offset-3 login_form">
        <form action="process.jsp" name="myForm">
          <div class="form-group form-group-sm row">
            <label class="control-label col-sm-4">Username</label>
            <div class="col-sm-8"><input type="text" class="col-sm-2 form-control" required name="userName" placeholder="username"></div>
          </div>
          <div class="form-group form-group-sm row">
            <label class="control-label col-sm-4">Email address</label>
            <div class="col-sm-8"><input type="email" class="col-sm-2 form-control" name="email" placeholder="Email" required></div>
          </div>
          <div class="form-group form-group-sm row">
           <label for="password" class="col-sm-4 control-label">Password</label>
           <div class="col-sm-8"><input type="password" class="form-control" name="password" placeholder="Password" required></div>
         </div>
         <div class="form-group form-group-sm row">
          <label for="rePassword" class="col-sm-4 control-label">Re-type password</label>
          <div class="col-sm-8"><input type="password" class="form-control" name="rePassword" placeholder="Re-type password"  onkeyup="recheckPass()" required></div>
        </div>
        <div class="form-group form-group-sm row">
            <label for="gender" class="col-sm-4 control-label">Gender</label>
            <div class="col-sm-8">
              <label class="radio-inline">
                <input type="radio" name="gender" value="male" required>Male
              </label>
              <label class="radio-inline">
                <input type="radio" name="gender" value="female" required> Female
              </label>
            </div>
        </div>
         <button type="submit" class="btn btn-primary btn-lg btn-block" id="submit">Register</button>
        </form>
      </div>
    </section>
  </div>
</body>
</html>