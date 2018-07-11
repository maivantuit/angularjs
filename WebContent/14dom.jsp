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
<!-- AngularJS HTML DOM: AngularJS has directives for binding application data to the attributes of HTML DOM elements.. -->
<!--
	1.	 				
-->

</head>

<body>
	<!-- The ng-disabled Directive -->
	<div ng-app="" ng-init="mySwitch=true">
		<p>
			<button ng-disabled="mySwitch">Click Me!</button>
		</p>
		<p>
			<input type="checkbox" ng-model="mySwitch"/>Button
		</p>
		<p>
			{{ mySwitch }}
		</p>
	</div>
	<!-- The ng-show Directive -->
	<div ng-app="">
		<p ng-show="true">I am visible.</p>	
		<p ng-show="false">I am not visible.</p>	
	</div> 
	<div ng-app="" ng-init="hour=13">
		<p ng-show="hour > 12">I am visible.</p>
	</div>
	<!-- The ng-hide Directive -->
	<div ng-app="">
		<p ng-hide="true">I am not visible.</p>	
		<p ng-hide="false">I am visible.</p>
	</div>
</body>
</html>