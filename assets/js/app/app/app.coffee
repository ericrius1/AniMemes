@app = angular.module('app',[]).config ($routeProvider)->
  $routeProvider.
    when('/', {controller:SubView, templateUrl:'subView'}).
    when('/first', {controller:SubView, templateUrl:'subView'}).
    when('/second', {controller:SubView, templateUrl:'subView'}).

    otherwise({redirectTo:'/'});
