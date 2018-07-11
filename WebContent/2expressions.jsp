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
<!-- AngularJS Expressions -->
<!--
-->
<script type="text/javascript">

</script>
</head>

<body ng-app>
	<h2>Lession 2</h2>

	<div>
	  <p>My first expression: {{ 5 + 5 }}</p> <!-- My first expression: 10 -->
	</div>
	<!-- AngularJS Expressions -->
	<%--Input text into tag:input, text is a color thi input change to that color  --%>
	<div ng-app="" ng-init="myCol='lightblue'">
		<input style="background-color: {{myCol}}" ng-model="myCol"/>
	</div>

	<!-- AngularJS Numbers -->
	<div ng-app="" ng-init="quantity=2;cost=5">
		<p>Total in dollar: {{ quantity * cost }}</p> <!-- Total in dollar: 10 -->
	</div>

	<div ng-app="" ng-init="quantity=2;cost=5">
		<p>Total in dollar: <span ng-bind="quantity*cost"></span></p><!-- Total in dollar: 10 -->
	</div>

	<!-- AngularJS Strings -->
	<div ng-app="" ng-init="firstName='Mai Van'; lastName='Tu'">
		<p>The name is: <span ng-bind="firstName + ' '+lastName"></span></p> <!--  The name is: Mai Van Tu -->
	</div>

	<!-- AngularJS Objects -->
	<div ng-app="" ng-init="person={firstName:'Mai Van', lastName:'Tu'}">
		<p>The name is:{{person.lastName}}</p> <!-- The name is:Tu -->
	</div>
	<!-- AngularJS Arrays -->
	<div ng-app="" ng-init="points=[7,8,4,2,10,8,9]">
		<p>The third result is {{points[2]}}</p> <!-- The third result is 4 -->
	</div>

</body>
</html>