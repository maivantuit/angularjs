<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Link Path Javascript -->
	<script src="jquery-2.1.1.min.js"></script>
	<!-- Link Path Directives -->
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.2/angular.min.js"></script>
	<!--
		AngularJS Scope:
		1. The scope is phan rang buoc giua View(HTML) va Controller(Javascript)
		2. The scope là một đối tượng với các thuộc tính và phương thức có sẵn.
		3. The scope có sẵn cho cả the view and the controller.
	-->
</head>

<body ng-app="myApp">
	<!-- How to Use the Scope? -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
	<h1>{{carname}}</h1>
	</div>
	<script type="text/javascript">
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
		    $scope.carname = "Chevrolet";
		});
	</script> -->
	<!-- Understanding the Scope -->
	 <!--<div ng-app="myApp" ng-controller="myCtrl">
		<input ng-model="name"/>
		<h1>My name is {{name}}</h1>
	</div>
	<script type="text/javascript">
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
		    $scope.name = "Chevrolet";
		});
	</script> -->
	<!-- Know Your Scope -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
		<ul>
			<li ng-repeat="item in names">{{item}}</li>
		</ul>
	</div>
	<script type="text/javascript">
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
		    $scope.names = ["Emil","Tobias","Linus"];
		});
	</script> -->
	<!--
	Emil
	Tobias
	Linus
	-->
	<!-- Root Scope: Have body:<body ng-app="myApp"> -->
	<!-- <p>The rootScope's favorite color:</p>
	<h1>{{color}}</h1>

	<div ng-controller="myCtrl">
		<p>The scope of the controller's favorite color:</p>
		<h1>{{color}}</h1>
	</div>

	<p>The rootScope's favorite color is still(con lai):</p>
	<h1>{{color}}</h1>

	<script type="text/javascript">
		var app = angular.module('myApp',[]);
		app.run(function($rootScope){
			$rootScope.color='blue';
		});
		app.controller('myCtrl',function($scope){
			$scope.color='red';
		});
	</script> -->
	<!-- Result
		The rootScope's favorite color:

		blue

		The scope of the controller's favorite color:

		red

		The rootScope's favorite color is still(con lai):

		blue
	-->
	 <!-- Lưu ý rằng biến màu của controller không ghi đè giá trị màu của rootScope. -->
</body>
</html>