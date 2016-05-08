<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${a}/bootstrap.min.css" rel="stylesheet"/>
 <script src="${b}/jquery-2.2.3.min.js">
 </script>
<script src="${b}/bootstrap.min.js">
</script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script>
var app=angular.module('myApp', []);

app.controller('FormSubmitController',function($scope){
		$scope.music =${listproduct};
	});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-app="myApp">
 <div class="container">
			<nav class="navbar navbar-static-top row">
			<div class="container-fluid">
			<div class="col-xs-3" style="float: left; padding-left: 20px; padding-right: 20px; padding-top: 10px;" >
      <span style="font-size: 30px;font-family: 'arial';font-weight: bolder;">MUSIC HUB</span></div>
                           <ul class="nav navbar-nav">
                                <li class="active"><a href="#">Sell</a></li>
                                 <li><a href="#">Advertise</a></li>
                                 <li><a href="#">Download App</a></li>
                                  <li><a href="#">24*7 Customer Care</a></li>
                                 <li><a href="signin">Sign Up</a></li>
                                 <li><a href="register">Register</a></li>
                                  </ul>
                            </div>
                            </nav>
                       </div>
                       
                       <div class="container"> 
                      <div class="form-group">
                      <div class="input-group">
                     
                       <input type="text" class="form-control" placeholder="Search" ng-model="searchMusic">
                          </div>      
                         
                         </div>
                         
                         <div  ng-controller="FormSubmitController"  class="container" >
                       
                         <table style="width:100%" border="1" class="table table-striped table-responsive">

                            <tr>
                      <th>ProductID</th>
                      <th>ProductName</th> 
                      <th>Brand</th>
                      <th>Description</th>
                      <th>Price</th>
                      <th>Category</th>
                      <th>Image</th>
                       </tr>
                       <tbody>
                         <tr ng-repeat="x in music | orderBy:'id' | filter:searchMusic">
                         <td>{{ x.id }}</td>
                         <td>{{ x.name }}</td>
                       <td>{{ x.brand}}</td>
                       <td>{{ x.description}}</td>
                       <td>{{ x.price}}</td>
                       <td>{{ x.category}}</td>
                       <td>
                       <form  action="productdetails">
                       <input type="hidden" name="id" value={{x.id}}/>
                        <input type="hidden" name="name" value={{x.name}}>
                         <input type="hidden" name="brand" value={{x.brand}}>
                          <input type="hidden" name="description" value={{x.description}}>
                           <input type="hidden" name="price" value={{x.price}}>
                            <input type="hidden" name="category" value={{x.category}}>
                            <a href="productdetails"  class="btn btn-success btn-lg">
                         <span class="glyphicon glyphicon-plus-sign"></span>
                         </a>
                       </form>
                       </td>
                      
                      </tr>
                     </tbody>
                   </table>
                   
                </div>
                   
                   
</body>
</html>