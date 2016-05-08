<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@page isELIgnored="false" %>
<html>
<head>
<c:url value="/resources/bootstrap/css" var="a" scope="application"></c:url>
<c:url value="/resources/bootstrap/js" var="b" scope="application"></c:url>
<c:url value="/resources/images" var="z" scope="application"></c:url>
<!--   <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
 <script src="resources/bootstrap/js/jquery-2.2.3.min.js">
 </script>
<script src="resources/bootstrap/js/bootstrap.min.js">
</script>-->

<link href="${a}/bootstrap.min.css" rel="stylesheet"/>
 <script src="${b}/jquery-2.2.3.min.js">
 </script>
<script src="${b}/bootstrap.min.js">
</script>
<style>
.carousel .carousel-inner .item img
{
width:100%;
height:600px;
}
</style>
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
                                 <li><a href="signin">Sign Up</a></li>
                                 <li><a href="register">Register</a></li>
                                  <li><a href="admin">For Admin</a></li>
                                 
   
   <li class = "dropdown dropdown-toggle disabled" id = "dropdownMenu1" data-toggle = "dropdown">
    
    <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Products
      <span class = "caret"></span>
   </a>
   <ul class = "dropdown-menu" role = "menu" aria-labelledby = "#dropdownMenu1">
      <li role = "presentation" class = "dropdown-header"></li>
      
      <li role = "presentation" >
         <a role = "menuitem" tabindex = "-1" href = "products">Guitar</a>
      </li>
      
      <li role = "presentation">
         <a role = "menuitem" tabindex = "-1" href = "products">Violin</a>
      </li>
      
      <li role = "presentation">
         <a role = "menuitem" tabindex = "-1" href = "products">Flute</a>
      </li>
     
   </ul>
   </li>
                            </ul>
                            </div>
                            </nav>
                       </div>
                   
      <div class="container"> 
   <div id="corousel" class="carousel slide" data-ride="carousel" style="margin: 0 auto">

      <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="${z}/img6.jpg" alt="" width="1024" height="100">
        <div class="carousel-caption"  style="text-align: center; color: white;">
          <p>Music is an Art</p>
        </div>
      </div>
      
       <div class="item">
        <img src="${z}/m1.jpg" alt="" width="1024" height="100">
        <div class="carousel-caption"  style="text-align: center; color: white;">
          <p>Music is an Entertainment</p>
        </div>
      </div>
      
      <div class="item">
        <img src="${z}/m2.jpg" alt="" width="1024" height="100">
        <div class="carousel-caption"  style="text-align: center; color: white;">
          <p>Music relaxes mind</p>
        </div>
        
      </div>

    </div>

    <a class="left carousel-control" href="#corousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
     </a>
    <a class="right carousel-control" href="#corousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    </a>
    </div>
    </div>
    
    <div class="container">
    <div>
   <p style="font-size:150%;font-family:verdana;">Music is a form of entertainment that puts sounds together in a way that people like or find interesting. Most music includes people singing with their voices or playing musical instruments, such as the piano, guitar, or drums</p>
   <a href="products"><img alt="flute" src="${z}/flute.jpg"/></a>
   <a href="products"><img alt="guitar" src="${z}/guitar.jpg"/></a>
   <a href="products"><img alt="violin" src="${z}/violin.jpg"/></a>
   </div>
   </div>
   <div class="container">
   <footer>  
  <p class="pull-right"><a href="#">Back to top</a></p>  
    </footer>  
      </div>  
   </body>
   </html>
        