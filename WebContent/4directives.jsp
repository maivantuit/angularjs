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
1. Các ng-appchỉ thị khởi tạo một ứng dụng AngularJS.

2. Các ng-initchỉ thị khởi dữ liệu ứng dụng.

3. Các ng-modelchỉ thị liên kết với các giá trị của các điều khiển HTML (input, select, textarea) để dữ liệu ứng dụng.
-->
<script type="text/javascript">

</script>
</head>

<body ng-app="myApp">
	<!-- AngularJS Directives -->
	<!-- <div ng-app="" ng-init="firstName='John'">
		<p>Name: <input type="text" ng-model="firstName"></p>
		<p>You wrote: {{ firstName }}</p>
	</div> -->
	<!-- Data Binding -->
	<!-- <div ng-app="" ng-init="quantity=2;price=5">

		Quantity: <input type="number" ng-model="quantity">
		Costs:    <input type="number" ng-model="price">

		Total in dollar: {{ quantity * price }} Total in dollar: 10

	</div> -->

	<!-- Repeating HTML Elements -->
	<!-- <div ng-app="" ng-init="names=['Jani','Hege','Kai']">
	  <ul>
	    <li ng-repeat="x in names">
	      {{ x }}
	    </li>
	  </ul>

	</div>
 -->
<!-- 	<div ng-app="" ng-init="names=[
		{name:'Jani',country:'Norway'},
		{name:'Hege',country:'Sweden'},
		{name:'Kai',country:'Denmark'}]">
		<ul>
		  <li ng-repeat="x in names">
		    {{ x.name + ', ' + x.country }}
		  </li>
		</ul>
		Jani, Norway
		Hege, Sweden
		Kai, Denmark

	</div> -->

	<!-- Create New Directives, in body: <body ng-app="myApp"> -->
	<!-- <w3-test-directive></w3-test-directive>
	<script>
		var app = angular.module("myApp", []);
		app.directive("w3TestDirective", function() {
		    return {
		        template : "<h1>Made by a directive!</h1>" //Made by a directive
		    };
		});
	</script> -->

	<!-- Restrictions, han che -->
	<w3-test-directive></w3-test-directive>
	<div w3-test-directive></div>
	<script type="text/javascript">
		var app = angular.module("myApp", []);
		app.directive("w3TestDirective", function() {
		    return {
		        restrict : "A",
		        template : "<h1>Made by a directive!</h1>"
		    };
		});
	</script>
	<!-- Lưu ý: Bằng cách đặt thuộc tính giới hạn thành "A", chỉ phần tử HTML có thuộc tính "w3-test-directive" đã gọi lệnh. -->
</body>
</html>