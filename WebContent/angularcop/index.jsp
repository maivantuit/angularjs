<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Link Path Angularjs -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.2/angular.min.js"></script>
<script src="app.js"></script>
</head>
<body ng-app="myModule">
	<!-- 1 -->
	<!-- <div ng-controller="myController">
		<input type="text" ng-model="mes"/>
		<br>
		Display: {{mes}}
		
		<div>
			<ul ng-repeat="item in emp">
				<li>{{item.id+','+ item.name}}</li>
			</ul>
		</div>
		<button ng-click="sayHello()"></button>
		<br>
		Display: {{name}}	
	</div> -->
	<!-- 2,3 -->
	<!-- <div ng-controller="classController">		
		Display: {{name}}	
	</div>
	<div ng-controller="schoolController">
		Display: {{name}}	
	</div> -->
	<div ng-controller="parenController">
		<div ng-controller="classController">Display: {{name}}</div>
		<div ng-controller="schoolController">Display: {{name}}</div>
		Display: {{name}}
	</div>
</body>
</html>