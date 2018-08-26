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
		AngularJS Forms: Forms in AngularJS provides data-binding and validation of input controls.
		<!--
		input elements
		select elements
		button elements
		textarea elements
	-->
</head>

<body>
	<!-- Data-Binding -->
	<!-- <div ng-app="myApp" ng-controller="formCtrl">
	  <form>
	    First Name: <input type="text" ng-model="firstname">
	  </form>
	</div>
	<script>
		var app = angular.module('myApp', []);
		app.controller('formCtrl', function($scope) {
		    $scope.firstname = "Mai Van Tu";
		});
	</script> -->

	<!-- example 2: input and display -->
	<!-- <div ng-app="">
	  <form>
	    First Name: <input type="text" ng-model="firstname">
	  </form>
	  <h1>You entered: {{firstname}}</h1>
	</div> -->
	<!-- Checkbox: click into checkbox, show h1 -->
	<!-- <div ng-app="">
	  <form>
	    Check to show a header:
	    <input type="checkbox" ng-model="myVar">
	  </form>
  	<h1 ng-show="myVar">My Header</h1>
	</div> -->

	<!-- Radiobuttons: use switch -->
	<!-- <div ng-app="">
		<form>
			Pick a topic: <input type="radio" ng-model="myVar" value="dogs">Dogs
			<input type="radio" ng-model="myVar" value="tuts">Tutorials <input
				type="radio" ng-model="myVar" value="cars">Cars
		</form>

		<div ng-switch="myVar">
			<div ng-switch-when="dogs">
				<h1>Dogs</h1>
				<p>Welcome to a world of dogs.</p>
			</div>
			<div ng-switch-when="tuts">
				<h1>Tutorials</h1>
				<p>Learn from examples.</p>
			</div>
			<div ng-switch-when="cars">
				<h1>Cars</h1>
				<p>Read about cars.</p>
			</div>
		</div>
	</div> -->

	<!-- Selectbox -->
	<!-- <div ng-app="">
		<form>
		  Select a topic:
		  <select ng-model="myVar">
		  	<option value="">Please, Chooice animals
		    <option value="dogs">Dogs
		    <option value="tuts">Tutorials
		    <option value="cars">Cars
		  </select>
		</form>

		<div ng-switch="myVar">
		  <div ng-switch-when="dogs">
		     <h1>Dogs</h1>
		     <p>Welcome to a world of dogs.</p>
		  </div>
		  <div ng-switch-when="tuts">
		     <h1>Tutorials</h1>
		     <p>Learn from examples.</p>
		  </div>
		  <div ng-switch-when="cars">
		     <h1>Cars</h1>
		     <p>Read about cars.</p>
		  </div>
		   <div ng-switch-when="">
		     <h1>Please, chooice</h1>
		     <p>Read about chooice.</p>
		  </div>
		</div>
	</div> -->

	<!-- An AngularJS Form Example -->
	<!-- <div ng-app="myApp" ng-controller="formCtrl">
	  <form novalidate>
	    First Name:<br>
	    <input type="text" ng-model="user.firstName"><br>
	    Last Name:<br>
	    <input type="text" ng-model="user.lastName">
	    <br><br>
	    <button ng-click="reset()">RESET</button>
	  </form>
	  <p>form = {{user}}</p>
	  <p>master = {{master}}</p>
	</div>
	<script>
		var app = angular.module('myApp', []);
		app.controller('formCtrl', function($scope) {
		    $scope.master = {firstName:"firstName Default", lastName:"lastName Default"};
		    $scope.reset = function() {
		        $scope.user = angular.copy($scope.master);
		    };
		    $scope.reset();
		});
	</script> -->
</body>
</html>