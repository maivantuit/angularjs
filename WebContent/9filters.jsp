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
		AngularJS Filters:được thêm vào AngularJS để định dạng dữ liệu.
		1. currency: Format a number to a currency format.
		2. date: Format a date to a specified format.
		3. filter: Select a subset(tap hop) of items from an array.
		4. json: Format an object to a JSON string.
		5. limitTo: Limits an array/string, into a specified number of elements/characters.
		6. lowercase: Format a string to lower case.
		7. number: Format a number to a string.
		8. orderBy: Orders an array by an expression.
		9. uppercase: Format a string to upper case.
	-->
</head>

<body>
	<!-- Adding Filters to Expressions:Filters can be added to expressions by using the pipe character "|" -->
	
	<!-- <div ng-app="myApp" ng-controller="personCtrl">
		<p>The name is {{ firstName | lowercase }}</p>
		<p>The name is {{ lastName | uppercase }}</p>
	</div>
	<script>
		angular.module('myApp', []).controller('personCtrl', function($scope) {
		    $scope.firstName = "MAI VAN",
		    $scope.lastName = "tu"
		});
	</script> -->
	<!-- Adding Filters to Directives -->
	<!-- <div ng-app="myApp" ng-controller="namesCtrl">
		<ul>
			<li ng-repeat="item in names | orderBy:'id'">{{ item.id+', '+item.name + ', ' + item.country}}</li>
		</ul>
	</div>
	<script type="text/javascript">
		angular.module('myApp',[]).controller('namesCtrl',function($scope){
			 $scope.names = [
			        {id:'1',name:'Jani',country:'Norway'},
			        {id:'3',name:'Carl',country:'Sweden'},
			        {id:'2',name:'Margareth',country:'England'},
			        {id:'5',name:'Hege',country:'Norway'},
			        {id:'4',name:'Joe',country:'Denmark'},
			        {id:'8',name:'Gustav',country:'Sweden'},
			        {id:'9',name:'Birgit',country:'Denmark'},
			        {id:'6',name:'Mary',country:'England'},
			        {id:'7',name:'Kai',country:'Norway'}
			        ];
		});
	</script> -->
	<!--  RESULT:
	Joe, Denmark
	Birgit, Denmark
	Margareth, England
	Mary, England
	Jani, Norway
	Hege, Norway
	Kai, Norway
	Carl, Sweden
	Gustav, Sweden -->
	

	 <!-- The currency Filter -->
	 <!-- <div ng-app="myApp" ng-controller="costCtrl">
	 	<h1>Price:{{price | currency}}</h1> Price:$58.00
	 </div>
	 <script type="text/javascript">
	 	var app = angular.module('myApp',[]);
	 	app.controller('costCtrl',function($scope){
	 		$scope.price = 58;
	 	});
	 </script> -->

	 <!-- The filter Filter -->
	<!-- <div ng-app="myApp" ng-controller="namesCtrl">
		<ul>
			<li ng-repeat="item in names | filter : 'i' ">{{item}}</li>

			Result:
			Jani
			Birgit
			Kai
		</ul>
	</div>
	<script type="text/javascript">
		var app= angular.module('myApp',[]);
		app.controller('namesCtrl',function($scope){
			$scope.names = [
		        'Jani',
		        'Carl',
		        'Margareth',
		        'Hege',
		        'Joe',
		        'Gustav',
		        'Birgit',
		        'Mary',
		        'Kai'
		    ];
		});
	</script> -->

	<!-- Filter an Array Based on User Input -->
	<!-- Tim kiem theo ky tu, vi du nhap chu J: thi Jani va Joe duoc loc -->
	<!-- <div ng-app="myApp" ng-controller="namesCtrl">
		<p><input type="text" ng-model="test"/></p>
		<ul>
			<li ng-repeat="item in names | filter:test">{{item}}</li>
		</ul>
	</div>
	<script>
		angular.module('myApp', []).controller('namesCtrl', function($scope) {
		    $scope.names = [
		        'Jani',
		        'Carl',
		        'Margareth',
		        'test',
		        'Joe',
		        'Gustav',
		        'Birgit',
		        'Mary',
		        'Kai'
		    ];
		});
	</script> -->

	<!-- Sort an Array Based on User Input: Click vao title se duoc sort -->
	<!-- <div ng-app="myApp" ng-controller="namesCtrl">
		<table border="1" width="100%">
			<tr>
				<th ng-click="orderByMe('name')">Name</th>
				<th ng-click="orderByMe('country')">Country</th>
			</tr>
			<tr ng-repeat="item in names | orderBy:myOrderBy">
				<td>{{item.name}}</td>
				<td>{{item.country}}</td>
			</tr>
		</table>
	</div>

	<script type="text/javascript">
		angular.module('myApp',[]).controller('namesCtrl',function($scope){
			$scope.names=[
			    {name:'Jani',country:'Norway'},
			    {name:'Carl',country:'Sweden'},
			    {name:'Margareth',country:'England'},
			    {name:'Hege',country:'Norway'},
			    {name:'Joe',country:'Denmark'},
			    {name:'Gustav',country:'Sweden'},
			    {name:'Birgit',country:'Denmark'},
			    {name:'Mary',country:'England'},
			    {name:'Kai',country:'Norway'}
			  ];
			$scope.orderByMe = function(x){
				$scope.myOrderBy = x;
			}
		});
	</script> -->

	<!-- Custom Filters -->

	<!-- <ul ng-app="myApp" ng-controller="namesCtrl">
		<li ng-repeat="x in names">
		    {{x | myFormat}}
		</li>
	</ul>

	<script>
		var app = angular.module('myApp', []);
		app.filter('myFormat', function() {
		    return function(x) {
		        var i, c, txt = "";
		        for (i = 0; i < x.length; i++) {
		            c = x[i];
		            if (i % 2 == 0) {
		                c = c.toUpperCase();
		            }
		            txt += c;
		        }
		        return txt;
		    };
		});
		app.controller('namesCtrl', function($scope) {
		    $scope.names = [
		        'Jani',
		        'Carl',
		        'Margareth',
		        'Hege',
		        'Joe',
		        'Gustav',
		        'Birgit',
		        'Mary',
		        'Kai'
		    ];
		});
	</script> -->

</body>
</html>