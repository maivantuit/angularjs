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
<!-- Intro -->
<!--
	1.ng-app: rất quan trọng:
		+ Nếu bỏ tại tag body sẽ app angularjs cho all trang web.
		+ Nếu bỏ cho 1 thẻ div riêng biệt thì sẽ app angularjs tương ứng cho phần tử đó.

	ng-app : định nghĩa và liên kết một ứng dụng AngularJS tới HTML.
	ng-model : gắn kết giá trị của dữ liệu ứng dụng AngularJS đến các điều khiển đầu vào HTML.
	ng-bind : gắn kết dữ liệu ứng dụng AngularJS đến các thẻ HTML.
-->
<script type="text/javascript">

</script>
</head>

<body ng-app>
	<h2>Lession 1</h2>
	Name: <input type="text" ng-model="name"/>
	<br/>
	Display:<div>{{name}}</div>

	<br/>
	<div >
	10+20 ={{10+20}}
	</div>
	<div>
	20+20 ={{20+20}}
	</div>

	<div>
	  <p>My first expression: {{ 5 + 5 }}</p>
	</div>

</body>
</html>