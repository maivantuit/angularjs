// create a module
var myApp = angular.module('myModule',[]);

// create a controller
myApp.controller('myController',myController);

function myController($scope,$rootScope){
	$scope.mes= "Angular of Cop";
	$scope.emp=[
	            {id:'1',name:'Mai Văn Tú'},
	            {id:'2',name:'Mai Văn Tú2'},
	            {id:'3',name:'Mai Văn Tú3'},
	            {id:'4',name:'Mai Văn Tú4'}
	];	
	$rootScope.name ="This is app value";
}