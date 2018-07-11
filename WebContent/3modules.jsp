<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Link Path Angularjs -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.2/angular.min.js"></script>
<!-- Modules -->
<!--
-->
<script type="text/javascript">

</script>
</head>

<body>
	<!-- Create a module -->

	<!-- <div ng-app="myApp">

	</div> -->
	<!-- <script type="text/javascript">
		var app = angular.module("myApp",[]);

	</script> -->

	<!-- Adding a Controller -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
		{{ firstName + " " + lastName }} Mai Van Tu
	</div>

	<script>
	var app = angular.module("myApp", []);
	app.controller("myCtrl", function($scope) {
	    $scope.firstName = "Mai Van";
	    $scope.lastName = "Tu";
	});
	</script> -->


	<!-- Adding a Directive -->
<!-- 	<div ng-app="myApp" w3-test-directive></div>
	<script type="text/javascript">
		var app = angular.module("myApp",[]);
		app.directive("w3TestDirective",function(){
			return {
		        template : "I was made in a directive constructor!"
		    };
		});
	</script> -->

	<!-- Modules and Controllers in Files -->
	<div ng-app="myApp" ng-controller="myCtrl">
		{{firstName+" "+lastName}} <!-- Mai Van Tu -->
	</div>
	<script src="myApp.js"></script>
	<script src="myCtrl.js"></script>

</body>
</html>