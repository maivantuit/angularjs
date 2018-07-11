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
		AngularJS API: API stands for Application Programming Interface.
		<!--
		API toàn cầu AngularJS là một tập hợp các hàm JavaScript chung để thực hiện các tác vụ phổ biến như:
			+ So sánh đối tượng
			+ Lặp lại các đối tượng
			+ Chuyển đổi dữ liệu
	-->
</head>

<body>
	<!-- AngularJS Global API -->

	<!--
	angular.lowercase ():	Chuyển đổi chuỗi thành chữ thường
	angular.uppercase ():	Chuyển đổi chuỗi thành chữ hoa
	angular.isString ():	Trả về true nếu tham chiếu là một chuỗi
	angular.isNumber ():	Trả về true nếu tham chiếu là một số
	 -->
	<div ng-app="myApp" ng-controller="myCtrl">
		<p>{{ x1 }}</p>
		<p>{{ x2 }}</p>
	</div>
	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
		    $scope.x1 = "Tu";
		    $scope.x2 = angular.lowercase($scope.x1);// tu
		    $scope.x3 = angular.uppercase($scope.x1);// TU
		    $scope.x4 = angular.isString($scope.x1);// true
		    $scope.x5 = angular.isNumber($scope.x1);// fasle
		});
	</script>
</body>
</html>