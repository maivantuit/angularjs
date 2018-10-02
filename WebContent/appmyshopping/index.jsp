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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="controller.js"></script>
</head>
<body>
	<div ng-app="myShoppingList" ng-cloak ng-controller="myCtrl"
		class="w3-card-2 w3-margin" style="max-width: 400px;">
		<header class="w3-container w3-light-grey w3-padding-16">
		<h3>My Shopping List</h3>
		</header>
		<ul class="w3-ul">
			<li ng-repeat="x in products" class="w3-padding-16">
				{{x}}
				<span ng-click="removeItem($index)" style="cursor: pointer;" class="w3-right w3-margin-right">×</span>
			</li>
		</ul>
		<div class="w3-container w3-light-grey w3-padding-16">
			<div class="w3-row w3-margin-top">
				<div class="w3-col s10">
					<input placeholder="Add shopping items here" ng-model="addMe"
						class="w3-input w3-border w3-padding">
				</div>
				<div class="w3-col s2">
					<button ng-click="addItem()" class="w3-btn w3-padding w3-green">Add</button>
				</div>
			</div>
			<p class="w3-text-red">{{errortext}}</p>
		</div>
	</div>
</body>
</html>