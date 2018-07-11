<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Link Path Directives -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.2/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
		<!--
		AngularJS Routing: The ngRoute module helps your application to become a Single Page Application.
		<!--

		-->

</head>

<body ng-app="myApp">
	<!-- What is Routing in AngularJS?
		If you want to navigate to different pages in your application,
		but you also want the application to be a SPA (Single Page Application),
		with no page reloading, you can use the ngRoute module.
	 -->
	 <!-- <div ng-app="myApp">
		<p><a href="#/!">Main</a></p>

		<a href="#!red">Red</a>
		<a href="#!green">Green</a>
		<a href="#!blue">Blue</a>
	 </div>
	 <div ng-view></div>
	 <script>
		var app = angular.module("myApp", ["ngRoute"]);
		app.config(function($routeProvider) {
		    $routeProvider
		    .when("/", {
		        templateUrl : "main.htm"
		    })
		    .when("/red", {
		        templateUrl : "red.htm"
		    })
		    .when("/green", {
		        templateUrl : "green.htm"
		    })
		    .when("/blue", {
		        templateUrl : "blue.htm"
		    });
		});
	</script> -->


	<!-- Controllers -->
		<p><a href="#/!">Main</a></p>

		<a href="#!london">City 1</a>
		<a href="#!paris">City 2</a>

		<p>Click on the links.</p>
	 <div ng-view></div>
	 <script>
		var app = angular.module("myApp", ["ngRoute"]);
		app.config(function($routeProvider) {
		    $routeProvider
		    .when("/", {
		        templateUrl : "main.htm",
		    })
		    .when("/london", {
		        templateUrl : "london.htm",
		        controller : "londonCtrl"
		    })
		    .when("/paris", {
		        templateUrl : "paris.htm",
		        controller : "parisCtrl"
		    });
		});
		app.controller("londonCtrl", function ($scope) {
		    $scope.msg = "I love London";
		});
		app.controller("parisCtrl", function ($scope) {
		    $scope.msg = "I love Paris";
		});

	</script>
</body>
</html>