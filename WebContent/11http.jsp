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
		AngularJS AJAX - $http:$http is an AngularJS service for reading data from remote servers.

	-->
</head>

<body>
	<!-- AngularJS $http -->
	<div ng-app="myApp" ng-controller="myCtrl">
		<p>Today's welcome message is:</p>
		<h1>{{myWelcome.login}}</h1> 
		<button ng-click="getValue()" >OK</button>
	</div>
	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope, $http) {
			$scope.getValue = function(){
				$http.get("https://api.github.com/users")
			    .then(function(response) {
			        $scope.myWelcome = response.data;
			        console.log($scope.myWelcome.map(function(item) {console.log(item)}));
			    });	
			}		    
		});
	</script>


	<!-- Methods -->

	<!--
	.delete()
	.get()
	.head()
	.jsonp()
	.patch()
	.post()
	.put()
	Các phương thức trên là tất cả các phím tắt gọi dịch vụ $ http:
	-->
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
		<p>Today's welcome message is:</p>
		<h1>{{myWelcome}}</h1>
	</div>
	<p>The $http service requests a page on the server, and the response is set as the value of the "myWelcome" variable.</p>

	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope, $http) {
		  $http({
		    method : "GET",
		    url : "welcome.htm"
		  }).then(function mySuccess(response) {
		      $scope.myWelcome = response.data;
		    }, function myError(response) {
		      $scope.myWelcome = response.statusText;
		  });
		});
	</script> -->

	<!-- 	Properties
	.config: đối tượng được sử dụng để tạo request.
	.data: một chuỗi hoặc một đối tượng mang theo phản hồi từ server.
	.headers: một hàm để sử dụng để lấy thông tin tiêu đề.
	.status: một số xác định trạng thái HTTP.
	.statusText: một chuỗi xác định trạng thái HTTP.
	 -->
	<!--  <div ng-app="myApp" ng-controller="myCtrl">
		<p>Data : {{content}}</p>
		<p>Status : {{statuscode}}</p>
		<p>StatusText : {{statustext}}</p>
	 </div>
	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope, $http) {
		  $http.get("welcome.htm")
		  .then(function(response) {
		      $scope.content = response.data; /* Data : <h2>Hello Cop</h2> */
		      $scope.statuscode = response.status; /* Status : 200 */
		      $scope.statustext = response.statusText; /* StatusText : OK */
		  });
		});
	</script> -->

	<!-- <div ng-app="myApp" ng-controller="myCtrl">
		<h1>{{content}}</h1> Error! Cop
	</div>
	<p>The response object has many properties. This example demonstrate the value of the data, status, and statusText properties.</p>
	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope, $http) {
		  $http.get("wrongfilename.htm")
		  .then(function(response) {
		      $scope.content = response.data;
		  }, function(response) {
		      $scope.content = "Something went wrong";
		  });
		});
	</script> -->

	<!-- 	JSON
	Dữ liệu bạn nhận được từ phản hồi được mong đợi ở định dạng JSON.
	JSON là một cách tuyệt vời để truyền dữ liệu và dễ sử dụng trong AngularJS hoặc bất kỳ JavaScript nào khác.
	Ví dụ: Trên máy chủ, chúng tôi có một tệp trả về đối tượng JSON chứa 15 khách hàng, tất cả được bao bọc trong mảng được gọi records.

	 -->
	<!-- <div ng-app="myApp" ng-controller="customersCtrl">
		<ul>
		  <li ng-repeat="x in myData">
		    {{ x.Name + ', ' + x.Country }} Mai Van Tu, VietNam Hani, USA
		  </li>
		</ul>
	</div>
	<script>
		var app = angular.module('myApp',[]);
		app.controller('customersCtrl',function($scope){
			$scope.myData = [
				{Name:'Mai Van Tu', Country:'VietNam'},
				{Name:'Hani', Country:'USA'},
				{Name:'Jame', Country:'USA'},
				{Name:'Ronaldo', Country:'USA'},
				{Name:'Như', Country:'USA'}
			];

		});
	</script> -->
	<!-- <script>
		var app = angular.module('myApp', []);
		app.controller('customersCtrl', function($scope, $http) {
		    $http.get("customers.php").then(function(response) {
		        $scope.myData = response.data.records;
		    });
		});
		/*
		1. $http is an XMLHttpRequest object for requesting external data.
		2. $http.get() reads JSON data from https://www.w3schools.com/angular/customers.php. */
	</script> -->

</body>
</html>