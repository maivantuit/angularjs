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
		AngularJS and W3.CSS: You can easily use w3.css style sheet together with AngularJS. This chapter demonstrates how.
		<!--
		1. <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		-->
</head>

<body ng-app="myApp" ng-controller="userCtrl">
	<!-- HTML Code -->
	<div class="w3-container">

		<h3>Users</h3>

		<table class="w3-table w3-bordered w3-striped">
			<tr>
				<th>Edit</th>
				<th>First Name</th>
				<th>Last Name</th>
			</tr>
			<tr ng-repeat="user in users">
				<td>
					<button class="w3-btn w3-ripple" ng-click="editUser(user.id)">&#9998;
						Edit</button>
				</td>
				<td>{{ user.fName }}</td>
				<td>{{ user.lName }}</td>
			</tr>
		</table>
		<br>
		<button class="w3-btn w3-green w3-ripple" ng-click="editUser('new')">&#9998;
			Create New User</button>

		<form ng-hide="hideform">
			<h3 ng-show="edit">Create New User:</h3>
			<h3 ng-hide="edit">Edit User:</h3>
			<label>First Name:</label> <input class="w3-input w3-border"
				type="text" ng-model="fName" ng-disabled="!edit"
				placeholder="First Name"> <br> <label>Last
				Name:</label> <input class="w3-input w3-border" type="text" ng-model="lName"
				ng-disabled="!edit" placeholder="Last Name"> <br> <label>Password:</label>
			<input class="w3-input w3-border" type="password" ng-model="passw1"
				placeholder="Password"> <br> <label>Repeat:</label> <input
				class="w3-input w3-border" type="password" ng-model="passw2"
				placeholder="Repeat Password"> <br>
			<button class="w3-btn w3-green w3-ripple"
				ng-disabled="error || incomplete">&#10004; Save Changes</button>
		</form>

	</div>
	<script src="myUsers.js"></script>
</body>
</html>