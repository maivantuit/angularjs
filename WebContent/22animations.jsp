<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Link Path Directives -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.2/angular.min.js"></script>
<!--
		AngularJS Animation: Một hoạt ảnh là khi việc chuyển đổi một phần tử HTML mang đến cho bạn một ảo ảnh về chuyển động.
		<!--
		Mô-đun ngAnimate thêm và loại bỏ các lớp.

		Mô-đun ngAnimate không làm động các phần tử HTML của bạn, nhưng khi ngAnimate nhận thấy một số sự kiện, như ẩn hoặc hiển thị phần tử HTML, phần tử nhận được một số lớp được xác định trước có thể được sử dụng để tạo hoạt ảnh.

		Các chỉ thị trong AngularJS người thêm / loại bỏ các lớp học là:

		ng-show
		ng-hide
		ng-class
		ng-view
		ng-include
		ng-repeat
		ng-if
		ng-switch
		Các chỉ thị ng-showvà ng-hidethêm hoặc loại bỏ một ng-hidegiá trị lớp.

		Các chỉ thị khác thêm ng-entergiá trị lớp khi họ nhập DOM và ng-leavethuộc tính khi chúng được xóa khỏi DOM.

		Các ng-repeatchỉ thị cũng cho biết thêm một ng-movegiá trị lớp khi các yếu tố HTML thay đổi vị trí.

		Ngoài ra, trong khi hoạt ảnh, phần tử HTML sẽ có một bộ giá trị lớp, sẽ được xóa khi hoạt ảnh đã hoàn tất. Ví dụ: ng-hidechỉ thị sẽ thêm các giá trị lớp này:

		ng-animate
		ng-hide-animate
		ng-hide-add (nếu phần tử sẽ bị ẩn)
		ng-hide-remove (nếu phần tử sẽ được hiển thị)
		ng-hide-add-active (nếu phần tử sẽ bị ẩn)
		ng-hide-remove-active (nếu phần tử sẽ được hiển thị)
		-->
<style>
div {
	transition: all linear 0.5s;
	background-color: lightblue;
	height: 100px;
	width: 100%;
	position: relative;
	top: 0;
	left: 0;
}

.ng-hide {
	height: 0;
	width: 0;
	background-color: transparent;
	top: -200px;
	left: 200px;
}
</style>
</head>

<body ng-app="ngAnimate">
	<!-- What is an Animation? -->

	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-animate.js"></script>
	<h1>
		Hide the DIV: <input type="checkbox" ng-model="myCheck">
	</h1>
	<div ng-hide="myCheck"></div>

	<!-- NgAnimate làm gì? -->
</body>
</html>