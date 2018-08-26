var myApp = angular.module("myModule", []);
myApp.controller("myController", loadData);
function loadData($scope, $http) {
	$http.get("data.json").then(function(response) {
		$scope.datas = response.data;
	});
}