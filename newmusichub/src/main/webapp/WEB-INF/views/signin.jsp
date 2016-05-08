<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${a}/bootstrap.min.css" rel="stylesheet"/>
 <script src="${b}/jquery-2.2.3.min.js">
 </script>
<script src="${b}/bootstrap.min.js">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Sign in to continue to MusicHub</h1>
            <div class="account-wall">
                <form class="form-signin">
                <input type="text" class="form-control" placeholder="Email" required autofocus>
                <input type="password" class="form-control" placeholder="Password" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    Remember me
                </label>
               
                </form>
    </div>
</div>
</body>
</html>