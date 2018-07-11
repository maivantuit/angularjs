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
<!-- AngularJS Tables -->
<!--
	1.	 				
-->
<style>
	table, th , td  {
	  border: 1px solid grey;
	  border-collapse: collapse;
	  padding: 5px;
	}
	table tr:nth-child(odd) {
	  background-color: #f1f1f1;
	}
	table tr:nth-child(even) {
	  background-color: #ffffff;
	}
</style>
</head>

<body>
	<div ng-app="myApp" ng-controller="customersCtrl"> 

	<table>
	  <tr ng-repeat="x in names">
	    <td>{{ x.Name }}</td>
	    <td>{{ x.Country }}</td>
	  </tr>
	</table>
	<script type="text/javascript">
		var app = angular.module('myApp',[]);
		app.controller('customersCtrl',function($scope, $http){
			$http.get('CustomerServlet')
			.then(function(respone){
				$scope.names = respone.data.record;				
			});
		});
	</script>

</div>
</body>
</html>