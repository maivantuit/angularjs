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
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.2/angular.min.js"></script>
<!--
		AngularJS and W3.CSS: With AngularJS, you can include HTML from an external file..
		<!--
		1. <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		-->
</head>

<body>
	<!-- AngularJS Includes -->
	<!-- <div ng-include="'myFile.htm'"></div>
	Include AngularJS Code
	<div ng-app="myApp" ng-controller="customersCtrl">
		<div ng-include="'myFile.htm'"></div>
	</div>

	<script>
		var app = angular.module('myApp', []);
		app.controller('customersCtrl', function($scope, $http) {
			$http.get("customers.php").then(function(response) {
				$scope.names = response.data.records;
			});
		});
	</script> -->
	<!-- Include Cross Domains -->
	<div ng-app="myApp">
		<div ng-include="'https://tryit.w3schools.com/angular_include.php'"></div>
	</div>

	<script>
		var app = angular.module('myApp', [])
		app.config(function($sceDelegateProvider) {
					$sceDelegateProvider.resourceUrlWhitelist(['https://tryit.w3schools.com/**' ]);
				});
	</script>
</body>
</html>