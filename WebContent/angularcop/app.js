// create a module
var myApp = angular.module('myModule',[]);

// create a controller

/// 1
/*myApp.controller('myController',myController);*/
/*function myController($scope){
	$scope.mes= "Angular of Cop";
	$scope.emp=[
	            {id:'1',name:'Mai Văn Tú'},
	            {id:'2',name:'Mai Văn Tú2'},
	            {id:'3',name:'Mai Văn Tú3'},
	            {id:'4',name:'Mai Văn Tú4'}
	];	
	$rootScope.name ="This is app value";
	$scope.sayHello = function(){
		$scope.name="Hello" + $scope.name;		
	}
}*/
/// 2
myApp.controller('classController',classController);
myApp.controller('schoolController',schoolController);
myApp.controller('parenController',parenController);
/*function classController($scope){
	$scope.name ="Tú";
};
function schoolController($scope){
	$scope.name ="Cọp";
}*/
// $scope phạm vi của nó là nằm trong 1 controller.

/// 3
/*function classController($scope$rootScope){
	$rootScope.name ="Tú";
};
function schoolController($scope,$rootScope){
	//$scope.name ="Cọp";
} */
/*
 * result:
	Display: Tú
	Display: Tú
*/
// $rootscope khi báo ở controller1 thì controller2 cũng đc nhận.

/// 4 scope long nhau:
function parenController($scope){
	$scope.name = "This is nested scope AngularJS";
};
function classController($scope,$rootScope){
	//$scope.name ="Tú";
};
function schoolController($scope,$rootScope){
	//$scope.name ="Cọp";
} 
/**
 * Result:
 *  Display: This is nested scope AngularJS
	Display: This is nested scope AngularJS
	Display: This is nested scope AngularJS
 */
