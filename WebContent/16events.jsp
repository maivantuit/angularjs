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
		AngularJS Events: AngularJS có các chỉ thị sự kiện HTML của riêng nó.

	-->
</head>

<body>
	<!-- AngularJS Events -->
	<!-- You can add AngularJS event listeners to your HTML elements by using one or more of these directives: -->
	<!--
	ng-blur
	ng-change
	ng-click
	ng-copy
	ng-cut
	ng-dblclick
	ng-focus
	ng-keydown
	ng-keypress
	ng-keyup
	ng-mousedown
	ng-mouseenter
	ng-mouseleave
	ng-mousemove
	ng-mouseover
	ng-mouseup
	ng-paste -->

	<!-- Mouse Events -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">

		<h1 ng-mousemove="count = count + 1">Mouse Over Me!</h1>

		<h2>{{ count }}</h2>

	</div>
	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
		    $scope.count = 0;
		});
	</script> -->
	<!--
	Result:
	Mouse Over Me!
	202 -->

	<!-- The ng-click Directive: Khi click vao button thi bien count tang len 1 -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
	<button ng-click="count = count + 1">Click me!</button>
	<p>{{ count }}</p>
	</div>
	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
		    $scope.count = 0;
		});
	</script> -->
	<!-- You can also refer to a function: -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
		<button ng-click="myFunction()">Click Me!</button>
		<p>{{ count }}</p>
	</div>
	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
		    $scope.count = 0;
		    $scope.myFunction = function() {
		        $scope.count++;
		    }
		});
	</script> -->

	<!-- Toggle, True/False -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
		<button ng-click="myFunc()">Click Me!</button>
		<div ng-show="showMe">
		    <h1>Menu:</h1>
		    <div>Pizza</div>
		    <div>Pasta</div>
		    <div>Pesce</div>
		</div>
	</div>
	<p>Click the button to show/hide the menu.</p>
	<script>
		var app = angular.module('myApp',[]);
		app.controller('myCtrl',function($scope){
			$scope.showMe = false;
			$scope.myFunc = function(){
				$scope.showMe = !$scope.showMe;
			}
		});
	</script> -->

	<!-- $event Object:You can pass the $event object as an argument when calling the function. -->
	<div ng-app="myApp" ng-controller="myCtrl">
		<h1 ng-mousemove="myFunc($event)">Mouse Over Me!</h1>
		<p>Coordinates: {{x + ', ' + y}}</p>
	</div>
	<p>Mouse over the heading to display the value of clientX and clientY from the event object.</p>
	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
		    $scope.myFunc = function(myE) {
		        $scope.x = myE.clientX;
		        $scope.y = myE.clientY;
		    }
		});
	</script>
</body>
</html>