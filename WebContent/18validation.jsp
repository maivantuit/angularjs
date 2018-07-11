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
		AngularJS Form Validation: AngularJS can validate input data..
		<!--
		AngularJS offers client-side form validation.

		AngularJS monitors the state of the form and input fields (input, textarea, select), and lets you notify the user about the current state.

		AngularJS also holds information about whether they have been touched, or modified, or not.

		You can use standard HTML5 attributes to validate input, or you can make your own validation functions.
	-->
</head>

<body>
	<!-- Required: Use the HTML5 attribute required to specify that the input field must be filled out -->
	<!-- <div ng-app="">
		<p>Try writing in the input field:</p>

		<form name="myForm">
			<input name="myInput" ng-model="myInput" required>
		</form>

		<p>The input's valid state is:</p>
		<h1>{{myForm.myInput.$valid}}</h1> true: inputed, false: not input.
	</div> -->

	<!-- E-mail:Use the HTML5 type email to specify that the value must be an e-mail: -->
	<!-- <div ng-app="">
		<p>Try writing an E-mail address in the input field:</p>
		<form name="myForm">
			<input type="email" name="myInput" ng-model="myInput">
		</form>
		<p>The input's valid state is:</p>
		<h1>{{myForm.myInput.$valid}}</h1>true: input dung voi format email , false: not input dung voi format email.
		<p>Note that the state of the input field is "true" before you start writing in it, even if it does not contain an e-mail address.</p>
	</div> -->

	<!-- Form State and Input State -->
	<!--
	$untouched: The field has not been touched yet(chua cham vao)
	$touched: The field has been touched(da cham vao)
	$pristine: The field has not been modified yet(chua sua doi)
	$dirty: The field has been modified(da duoc sua doi)
	$invalid: The field content is not valid(Nội dung truong khong hop le)
	$valid: The field content is valid(Nội dung truong hop le) -->

	<!-- <div ng-app="">
		<form action="" name="myForm">
			<p>Name:
				<input name="myName" ng-model="myName" required>
				<span ng-show="myForm.myName.$touched && myForm.myName.$invalid">The name is required.</span>
			</p>
			<p>Address:
				<input name="myAddress" ng-model="myAddress" required>
				<span ng-show="myForm.myAddress.$touched && myForm.myAddress.$invalid">The name is required.</span>
			</p>
		</form>
	</div> -->
	<!-- CSS Classes: AngularJS thêm các lớp CSS vào các biểu mẫu và các trường đầu vào tùy theo trạng thái của chúng. -->
	<!--
		Các lớp sau được thêm vào hoặc bị xóa khỏi, các trường nhập:

		ng-untouched: Field chưa được chạm vào
		ng-touched: Trường đã được chạm vào
		ng-pristine: Trường chưa được sửa đổi
		ng-dirty: Trường đã được sửa đổi
		ng-valid: Nội dung trường hợp lệ
		ng-invalid: Nội dung của trường không hợp lệ
		ng-valid-key: Một khóa cho mỗi lần xác thực. Ví dụ: ng-valid-requiredhữu ích khi có nhiều thứ phải được xác thực
		ng-invalid-key: Thí dụ: ng-invalid-required

		Các lớp sau được thêm vào hoặc loại bỏ khỏi các biểu mẫu:

		ng-pristine: Chưa có trường nào chưa được sửa đổi
		ng-dirty: Một hoặc nhiều trường đã được sửa đổi
		ng-valid: Nội dung của biểu mẫu hợp lệ
		ng-invalid: Nội dung của biểu mẫu không hợp lệ
		ng-valid-key: Một khóa cho mỗi lần xác thực. Ví dụ: ng-valid-requiredhữu ích khi có nhiều thứ phải được xác thực
		ng-invalid-key: Thí dụ: ng-invalid-required
		Các lớp được loại bỏ nếu giá trị mà chúng đại diện false.
	-->
	<!-- <style>
		input.ng-invalid {
		    background-color:pink;
		}
		input.ng-valid {
		    background-color:lightgreen;
		}
	</style>
	<div ng-app="">
		<p>Try writing in the input field:</p>
		<form name="myForm">
			<input name="myName" ng-model="myName" required>
		</form>
	</div> -->
	<!-- Custom Validation: Để tạo ra chức năng xác nhận của riêng bạn là một chút phức tạp hơn; Bạn phải thêm một chỉ thị mới vào ứng dụng của bạn, và đối phó với việc xác nhận hợp lệ bên trong một hàm với các đối số được chỉ định nhất định. -->
	<!-- Nhap vao input, co chu "e" la true, false cho th nguoc lai -->
	<!-- <div ng-app="">
		<form name="myForm">
			<input name="myInput" ng-model="myInput" required my-directive>
		</form>

		<p>The input's valid state is:</p>
		<h1>{{myForm.myInput.$valid}}</h1>
	</div>
	<script>
		var app = angular.module('myApp', []);
		app.directive('myDirective', function() {
		    return {
		        require: 'ngModel',
		        link: function(scope, element, attr, mCtrl) {
		            function myValidation(value) {
		                if (value.indexOf("e") > -1) {
		                    mCtrl.$setValidity('charE', true);
		                } else {
		                    mCtrl.$setValidity('charE', false);
		                }
		                return value;
		            }
		            mCtrl.$parsers.push(myValidation);
		        }
		    };
		});
	</script> -->

	<!-- Validation Example -->
	<div>
		<h2>Validation Example</h2>

		<form ng-app="myApp" ng-controller="validateCtrl" name="myForm" novalidate>

			<p>Username:<br>
			<input type="text" name="user" ng-model="user" required>
			<span style="color:red" ng-show="myForm.user.$dirty && myForm.user.$invalid">
				<span ng-show="myForm.user.$error.required">Username is required.</span>
			</span>
			</p>

			<p>Email:<br>
			<input type="email" name="email" ng-model="email" required>
			<span style="color:red" ng-show="myForm.email.$dirty && myForm.email.$invalid">
				<span ng-show="myForm.email.$error.required">Email is required.</span>
				<span ng-show="myForm.email.$error.email">Invalid email address.</span>
			</span>
			</p>

			<p>
			<input type="submit" ng-disabled="myForm.user.$dirty && myForm.user.$invalid ||
			myForm.email.$dirty && myForm.email.$invalid">
			</p>

		</form>
	</div>
	<script>
		var app = angular.module('myApp', []);
		app.controller('validateCtrl', function($scope) {
		    $scope.user = 'Mai Van Tu';
		    $scope.email = 'maivantu@gmail.com';
		});
	</script>
</body>
</html>