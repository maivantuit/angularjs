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
		1. Các ng-app: chỉ thị khởi tạo một ứng dụng AngularJS.

		2. Các ng-init: chỉ thị khởi dữ liệu ứng dụng.

		3. Các ng-model: chỉ thị liên kết với các giá trị của các điều khiển HTML (input, select, textarea) để dữ liệu ứng dụng.
	-->
	<style>
			input.ng-touched {
			    background-color: lightblue;
			}
	</style>

</head>

<body>
	<!-- The ng-model Directive -->
	<!--
	<div ng-app="myApp" ng-controller="myCtrl">
		Name: <input ng-model="name">
	</div>
	<script type="text/javascript">
		var app= angular.module('myApp',[]);
		app.controller('myCtrl',function($scope){
			$scope.name="Mai Van Tu";
		});
	</script> -->

	<!-- Two-Way Binding, hai chieu rang buoc -->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
    Name: <input ng-model="name">
    <h1>You entered: {{name}}</h1>

    <script type="text/javascript">
		var app= angular.module('myApp',[]);
		app.controller('myCtrl',function($scope){
			$scope.name="Mai Van Tu";
		});
	</script> -->

	<!-- Validate User Input, validate email theo format cua email, khong dung thi gen ra error -->
	<!-- <form ng-app="" name="myForm">
	    Email:
	    <input type="email" name="myAddress" ng-model="text">
	    <span ng-show="myForm.myAddress.$error.email">Not a valid e-mail address</span>
	</form> -->

	<!-- Application Status -->
	<!-- <form ng-app="" name="myForm" ng-init="myText = 'post@myweb.com'">
	    Email:
	    <input type="email" name="myAddress" ng-model="myText" required>
	    <p>Edit the e-mail address, and it will try to change the status.</p>
	    <h1>Status</h1>
	 	<p>Valid: {{myForm.myAddress.$valid}} (if true, the value meets all criteria, dap ung tat ca cac tieu chi).</p>
		<p>Dirty: {{myForm.myAddress.$dirty}} (if true, the value has been changed).</p>
		<p>Touched: {{myForm.myAddress.$touched}} (if true, the field has been in focus).</p>
	</form> -->

	<!-- CSS Classes: Khi input a text into input tag, thi css will duoc bien mat. -->
	<form ng-app="" name="myForm">
	    Enter your name:
	    <input name="myName" ng-model="myText" required>
	</form>
	<!-- CSS"
	<style>
			input.ng-invalid {
			    background-color: lightblue;
			}
	</style>
	-->
	<!-- Ngoai .ng-invalid thi con co:
		1. ng-empty
		2. ng-not-empty
		3. ng-touched
		4. ng-untouched
		5. ng-valid
		6. ng-invalid
		7. ng-dirty
		8. ng-pending
		9. ng-pristine
	USE:
	1. 	{{myForm.myAddress.$valid}}: boolean, use voi avariables.
	2.  input.ng-touched: CSS
	-->



</body>
</html>