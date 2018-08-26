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
<!--
	1.	 				
-->

</head>

<body ng-app>
	Input name: <input type="text" ng-model="name"/>
	Display name: {{name}}
</body>
</html>