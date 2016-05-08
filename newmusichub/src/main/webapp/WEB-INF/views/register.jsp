<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${a}/bootstrap.min.css" rel="stylesheet"/>
 <script src="${b}/jquery-2.2.3.min.js">
 </script>
<script src="${b}/bootstrap.min.js">
</script>
<title>Registration Form</title>
</head>
<body>

<div class="container">
			<nav class="navbar navbar-static-top row">
			<div class="container-fluid">
			<div style="float: left; padding-left: 20px; padding-right: 20px; padding-top: 10px;" class="col-xs-3">
      <span style="font-size: 30px;font-family: 'arial';font-weight: bolder;">MUSIC HUB</span></div>
                           <ul class="nav navbar-nav">
                                <li class="active"><a href="#">Home</a></li>
                                 <li><a href="#about">About us</a></li>
                                 <li><a href="#contact">Contact</a></li>
                                
                            </ul>
                            </div>
                            </nav>
                       </div>
                   
<div class="container">
<form >
<div class="form-group row">
First name: <input type="text" class="form-control" name="fname" placeholder="First Name" required/>
</div>
<div class="form-group row">
Last name: <input type="text" name="lname" class="form-control"  placeholder="Last Name" required/>
</div>
<div class="form-group row">
Enter contact: <input type="text" name="contact" class="form-control" placeholder="Contact No" required/>
</div>
<div class="form-group row">
Enter email: <input type="text" name="email" class="form-control" placeholder="Email" required/>
<br>
</div>
<div class="form-group row">
Enter address: <input type="text" name="address" class="form-control" placeholder="Address" required/>
</div>
<div class="form-group row">
Enter password: <input type="password" name="name" class="form-control" placeholder="Password" required/>
</div>
<div class="form-group row">
<input type="submit" value="Register"/>
</div>

</form>
</div>
</body>
</html>