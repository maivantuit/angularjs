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
		Data Binding: Ràng buộc dữ liệu trong AngularJS là sự đồng bộ hóa giữa mô hình và khung nhìn.
		+ Sử dụng directive:ng-bind để ràng buộc innerHTML của một phần tử vào một thuộc tính trong mô hình dữ liệu
	-->
</head>

<body>
	<!--Data Model-->
	<!--:Sử dụng directive:ng-bind để ràng buộc innerHTML của một phần tử vào một thuộc tính trong mô hình dữ liệu -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
		<p ng-bind="firstName"></p>
		<p ng-bind="lastName"></p>
	</div> -->
	<!-- or use double braces {{ }} -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
    <p>First name: {{firstName}}</p>
    <p>Last name: {{lastName}}</p>
	</div>
	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
		    $scope.firstName = "Mai Van";
		    $scope.lastName = "Tu";
		});
	</script> -->

	<!-- The ng-model Directive -->
	<!-- Sử dụng Directive ng-model trên các điều khiển HTML (đầu vào, chọn, văn bản) để liên kết dữ liệu giữa view và data model. -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
   	 <input ng-model="firstname">
	</div>

	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
		    $scope.firstname = "Mai Van";
		    $scope.lastname = "Tu";
		});
	</script> -->

	<!-- Two-way Binding -->
	<!--
		1. la su dong bo giua model and view
		2. Thay đổi tên bên trong trường nhập và dữ liệu mô hình sẽ tự động thay đổi và do đó, tiêu đề sẽ thay đổi giá trị của nó
	-->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
	    Name: <input ng-model="firstname">
	    <h1>{{firstname}}</h1>
	</div>

	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
		    $scope.firstname = "Mai Van ";
		    $scope.lastname = "Tu";
		});
	</script> -->
	<!-- AngularJS Controller -->
	<!--
		1. Khi click vao name thi lable change from Tu-> Cop.
	-->
	<div ng-app="myApp" ng-controller="myCtrl">
    <h1 ng-click="changeName()">{{name}}</h1>
	</div>

	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
		    $scope.name = "Tu";
		    $scope.changeName = function() {
		        $scope.name = "Cop";
		    }
		});
	</script>
</body>
</html>