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
<!-- AngularJS Select Boxes: AngularJS lets you create dropdown lists based on items in an array, or an object. -->
<!--
	1.	 				
-->

</head>

<body>
	<!-- Creating a Select Box Using ng-options: ket qua cho 1 combobox gom cac data duoi -->
	<!-- 
	<div ng-app="myApp" ng-controller="myCtrl"> 		
		<select ng-model="selectedName" ng-options="item for item in names">		
		</select>
	</div>
	<script type="text/javascript">
		var app = angular.module('myApp',[]);
		app.controller('myCtrl',function($scope){	
				$scope.names = ["Emil", "Tobias", "Linus"];		
		});
	</script> -->
	<!-- ng-options vs ng-repeat:ket qua cho 1 combobox gom cac data duoi -->
	<!-- 
	<div ng-app="myApp" ng-controller="myCtrl">
		<select>
		<option ng-repeat="x in names">{{x}}</option>
		</select>
	</div>
	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
		    $scope.names = ["Emil", "Tobias", "Linus"];
		});
	</script> -->
	
	<!-- <div ng-app="myApp" ng-controller="myCtrl">

		<p>Select a car:</p>		
		<select ng-model="selectedCar">
			<option ng-repeat="x in cars" value="{{x.model}}">{{x.model}}</option>
		</select>		
		<h1>You selected: {{selectedCar}}</h1>

	</div>
	<script type="text/javascript">
		var app = angular.module('myApp',[]);
		app.controller('myCtrl',function($scope){
			$scope.cars = [
			    {model : "Ford Mustang", color : "red"},
		        {model : "Fiat 500", color : "white"},
		        {model : "Volvo XC90", color : "black"}         
			];
		});
	</script> -->
	
	<!-- <div ng-app="myApp" ng-controller="myCtrl">

	<p>Select a car:</p>
	
	<select ng-model="selectedCar" ng-options="x.model for x in cars">
	</select>
	
	<h1>You selected: {{selectedCar.model}}</h1>
	<p>Its color is: {{selectedCar.color}}</p>

	</div>

	<script>
	var app = angular.module('myApp', []);
	app.controller('myCtrl', function($scope) {
	    $scope.cars = [
	        {model : "Ford Mustang", color : "red"},
	        {model : "Fiat 500", color : "white"},
	        {model : "Volvo XC90", color : "black"}
	    ];
	});
	</script> -->
	<!-- The Data Source as an Object -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">

	<p>Select a car:</p>	
	<select ng-model="selectedCar" ng-options="x for (x, y) in cars">
	</select>	
	<h1>You selected: {{selectedCar}}</h1>
	
	</div>
	<script>
	var app = angular.module('myApp', []);
	app.controller('myCtrl', function($scope) {
	    $scope.cars = {
	        car01 : "Ford",
	        car02 : "Fiat",
	        car03 : "Volvo"
	    }
	});
	</script> -->
	<div ng-app="myApp" ng-controller="myCtrl">

	<p>Select a car:</p>
	
	<select ng-model="selectedCar" ng-options="y.brand for (x, y) in cars">
	</select>
	
	<h1>You selected: {{selectedCar.brand}}</h1>
	<h2>Model: {{selectedCar.model}}</h2>
	<h3>Color: {{selectedCar.color}}</h3>
	
	<p>The visible text inside the dropdown list can also be a property of the value object.</p>

	</div>
	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
		    $scope.cars = {
		        car01 : {brand : "Ford", model : "Mustang", color : "red"},
		        car02 : {brand : "Fiat", model : "500", color : "white"},
		        car03 : {brand : "Volvo", model : "XC90", color : "black"}
		    }
		});
	</script>
</body>
</html>