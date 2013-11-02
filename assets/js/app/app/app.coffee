@AniMemeApp = angular.module('AniMemeApp',[]).config ($routeProvider)->
  $routeProvider.
    when('/', {controller: Home, templateUrl:'homeView'}).
    otherwise({redirectTo:'/'});