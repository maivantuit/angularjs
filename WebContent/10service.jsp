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
		AngularJS Service:In AngularJS, a service is a function, or object, that is available for, and limited to, your AngularJS application
		+ Have 30 service cai san, trong do co:
			- $location:AngularJS thích sử dụng $location dịch vụ thay vì window.locationđối tượng.
			- $http: La service đưa ra yêu cầu tới máy chủ và cho phép ứng dụng của bạn xử lý phản hồi.
			- $timeout: is AngularJS' version of the window.setTimeout function.
			- $interval: is AngularJS' version of the window.setInterval function.
	-->
</head>

<body>
	<!-- What is a Service? -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
		<p>The url of this page is:</p>
		<h3>{{myUrl}}</h3>
		The url of this page is:
		http://localhost:8080/angularjs/10service.jsp
	</div>

	<script type="text/javascript">
		var app = angular.module('myApp',[]);
		app.controller('myCtrl',function($scope,$location){
			$scope.myUrl = $location.absUrl();
		});
	</script> -->

	<!-- The $http Service -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
		<p>Today's welcome message is:</p>
		<h1>{{myWelcome}}</h1>
	</div>
	<p>The $http service requests a page on the server, and the response is set as the value of the "myWelcome" variable.</p>
	<script type="text/javascript">
	var app = angular.module('myApp', []);
	app.controller('myCtrl', function($scope, $http) {
	  $http.get("welcome.htm").then(function (response) {
	      $scope.myWelcome = response.data;
	  });
	});
	</script> -->

	<!-- The $timeout Service -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
	<p>This header will change after two seconds:</p>
	<h1>{{myHeader}}</h1>
	</div>
	<script type="text/javascript">
		var app = angular.module('myApp',[]);
		app.controller('myCtrl',function($scope, $timeout){
			$scope.myHeader = "Hello world";
			$timeout(function(){
				$scope.myHeader = "How are you today?";
			}, 2000);
		});
	</script> -->

	<!-- The $interval Service:Hiển thị thời gian mỗi giây -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
		<p>The time is:</p>
		<h1>{{theTime}}</h1>
	</div>
	<p>The $interval service runs a function every specified millisecond.</p>
	<script type="text/javascript">
		var app = angular.module('myApp',[]);
		app.controller('myCtrl',function($scope, $interval){
			$scope.theTime = new Date().toLocaleTimeString();
			$interval(function(){
				$scope.theTime = new Date().toLocaleTimeString();
			},1000);
		});
	</script> -->

	<!--
	The time is:
	19:24:05
	The $interval service runs a function every specified millisecond.
	-->

	<!-- Create Your Own Service -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
		<p>The hexadecimal value of 10 is:</p> 10:a, 20: 14,255:ff
		<h1>{{hex}}</h1>
	</div>
	<p>A custom service with a method that converts a given number into a hexadecimal number.</p>
	<script type="text/javascript">
		var app = angular.module('myApp',[]);
		app.service('hexafy',function(){
			this.myFunc = function(x){
				return x.toString(16);
			}
		});
		app.controller('myCtrl',function($scope, hexafy){
			$scope.hex = hexafy.myFunc(255)
		});
	</script> -->

	<!-- Use a Custom Service Inside a Filter, tuong tu voi di du tren -->
	<!-- <div ng-app="myApp">
		Convert the number 255, using a custom made service inside a custom made filter:
		<h1>{{255 | myFormat}}</h1>
	</div>
	<script>
		var app = angular.module('myApp', []);
		app.service('hexafy', function() {
		    this.myFunc = function (x) {
		        return x.toString(16);
		    }
		});
		app.filter('myFormat',['hexafy', function(hexafy) {
		    return function(x) {
		        return hexafy.myFunc(x);
		    };
		}]);
	</script> -->

	<!-- Use a Custom Service Inside a Filter, Voi a ARRAY, tuong tu voi di du tren -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
		<p>Use a filter when displaying the array [255, 251, 200]:</p>

		<ul>
		  <li ng-repeat="x in counts">{{x | myFormat}}</li>
		</ul>

		<p>This filter uses a service that converts numbers into hexadecimal values.</p>
	</div>

	<script>
		var app = angular.module('myApp', []);
		app.service('hexafy', function() {
		    this.myFunc = function (x) {
		        return x.toString(16);
		    }
		});
		app.filter('myFormat',['hexafy', function(hexafy) {
		    return function(x) {
		        return hexafy.myFunc(x);
		    };
		}]);
		app.controller('myCtrl', function($scope) {
		    $scope.counts = [255, 251, 200];
		});
	</script> -->
	</body>
</html>