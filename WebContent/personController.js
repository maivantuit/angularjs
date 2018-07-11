angular.module('myApp', []).controller('personCtrl', function($scope) {
    $scope.firstName = "Mai Van",
    $scope.lastName = "Tu",
    $scope.fullName = function() {
        return $scope.firstName + " " + $scope.lastName;
    }
});