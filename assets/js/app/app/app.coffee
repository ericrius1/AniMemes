window.app = angular.module('AniMemeApp',[]).config ($routeProvider)->
  $routeProvider.
    when('/', {controller: HomeCtrl, templateUrl:'homeView'}).
    otherwise({redirectTo:'/'});