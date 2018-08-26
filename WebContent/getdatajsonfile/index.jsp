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
<script src="controller.js"></script>
</head>
<body ng-app="myModule">
	<div ng-controller="myController">
		<table border="1">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Working</th>
			</tr>
			<tr ng-repeat="item in datas">
				<td>{{item.id}}</td>
				<td>{{item.name}}</td>
				<td>{{item.working}}</td>
			</tr>
		</table>
	</div>
</body>
</html>