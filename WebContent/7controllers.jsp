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
		AngularJS Controllers:
		1. Angularjs duoc control bang cac controllers.
		2. Directive ng-controller: duoc dinh nghia dieu khien ung dung.
		3. A controller la a JavaScript Object, tao boi mot chuan JavaScript Object Constructor.

		$scope: Trong AngularJS, $ scope là đối tượng ứng dụng (chủ sở hữu các biến ứng dụng và các hàm).
	-->
</head>


<body>
	<!-- AngularJS Example -->
	
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
		First Name: <input type="text" ng-model="firstName" />
		Last Name: <input type="text" ng-model="lastName" />
		<br>
		Full Name: {{firstName+ " "+ lastName}}
	</div>
	<script type="text/javascript">
	var app= angular.module('myApp',[]);
	app.controller('myCtrl',function($scope){
		$scope.firstName="Mai Van";
		$scope.lastName="Tu";
	});
	</script> -->

	<!-- Controller Methods -->
	
	<!-- <div ng-app="myApp" ng-controller="myCtrl">
		First Name: <input type="text" ng-model="firstName" />
		Last Name: <input type="text" ng-model="lastName" />
		<br>
		Full Name: {{firstName+ " "+ lastName}}
	</div>
	<script type="text/javascript">
		var app = angular.module('myApp',[]);
		app.controller('myCtrl',function($scope){
			$scope.firstName="Mai Van";
			$scope.lastName="Tu";
			$scope.fullName= function(){
				return $scope.firstName + " "+ $scope.lastName;
			};
		});
	</script> -->

	<!-- Controllers In External Files -->
	<!-- <div ng-app="myApp" ng-controller="personCtrl">

		First Name: <input type="text" ng-model="firstName"><br>
		Last Name: <input type="text" ng-model="lastName"><br>
		<br>
		Full Name: {{fullName()}}

	</div>
	<script src="personController.js"></script> -->

	<!-- Another Example -->
	<!-- <div ng-app="myApp" ng-controller="namesCtrl">
		<ul>
			<li ng-repeat=" item in names">{{item.name+', '+item.country}}</li>
		</ul>
	</div>
	<script type="text/javascript">
		angular.module('myApp',[]).controller('namesCtrl',function($scope){
			$scope.names= [
				{name:'Jani',country:'Norway'},
		        {name:'Hege',country:'Sweden'},
		        {name:'Kai',country:'Denmark'}
			];
		});
	</script> -->
	<!--
	Result:
	Jani, Norway
	Hege, Sweden
	Kai, Denmark -->


</body>
</html>