<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
 <script src="resources/bootstrap/js/jquery-2.2.3.min.js">
 </script>
<script src="resources/bootstrap/js/bootstrap.min.js">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class = "dropdown">
   
   <button type = "button" class = "btn dropdown-toggle" id = "dropdownMenu1" data-toggle = "dropdown">
      Products
      <span class = "caret"></span>
   </button>
   
   <ul class = "dropdown-menu" role = "menu" aria-labelledby = "dropdownMenu1">
      <li role = "presentation" class = "dropdown-header"></li>
      
      <li role = "presentation" >
         <a role = "menuitem" tabindex = "-1" href = "#">Guitar</a>
      </li>
      
      <li role = "presentation">
         <a role = "menuitem" tabindex = "-1" href = "#">Voilin</a>
      </li>
      
      <li role = "presentation">
         <a role = "menuitem" tabindex = "-1" href = "#">Flute</a>
      </li>
     
   </ul>
   
</div>
</body>
</html>