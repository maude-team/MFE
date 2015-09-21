/**
 * Created by amoreno on 18/09/15.
 */

var mfeApp = angular.module('mfeApp', ['ngRoute']);

mfeApp.directive('navbarMfe', function () {
    return {
        restrict: 'E',
        templateUrl: 'templates/navbar.html',
        controller: 'NavbarController'
    };
});

mfeApp.controller('NavbarController', ['$scope', '$location', function($scope, $location) {
    $scope.isActive = function (viewLocation) {
        return viewLocation === $location.path() ? 'active' : '';
    };
}]);

mfeApp.config(['$routeProvider', function($routeProvider) {
    $routeProvider
        .when('/', {
            templateUrl: 'views/home.html'
        })
        .when('/installation', {
            templateUrl: 'views/installation.html'
        })
        .when('/hellomfe', {
            templateUrl: 'views/hellomfe.html'
        });;
}]);

mfeApp.controller('maudeSyntaxController', ['$scope', '$sce', function($scope, $sce) {
    $scope.processCode = function (codeToProcess) {
        var res = codeToProcess;
        var keywords = ['fmod', 'endfm', 'sort', 'sorts', 'is'];
        var keywords2 = ['eq', 'mb', 'ceq', 'if', 'rl', 'crl', 'else', 'then', 'fi'];
        var keywords3 = ['ctor', 'assoc', 'comm', 'gather', 'id:'];
        var keywords4 = ['op', 'ops', 'var', 'vars'];

        for(i = 0; i < keywords.length; i++){
            var re = new RegExp(keywords[i], 'g');
            res = res.replace(re, '<span class=\"keyword\">' + keywords[i] + '</span>');
        }

        for(i = 0; i < keywords2.length; i++){
            var re = new RegExp(keywords2[i], 'g');
            res = res.replace(re, '<span class=\"keyword2\">' + keywords2[i] + '</span>');
        }

        for(i = 0; i < keywords3.length; i++){
            var re = new RegExp(keywords3[i], 'g');
            res = res.replace(re, '<span class=\"keyword3\">' + keywords3[i] + '</span>');
        }

        for(i = 0; i < keywords4.length; i++){
            var re = new RegExp(keywords4[i] + ' ', 'g');
            res = res.replace(re, '<span class=\"keyword4\">' + keywords4[i] + ' </span>');
        }

        return $sce.trustAsHtml(res);
    };

}]);