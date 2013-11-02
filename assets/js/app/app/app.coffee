@AniMemeApp = angular.module('AniMemeApp',[]).config ($routeProvider)->
  $routeProvider.
    when('/', {controller:SubView, templateUrl:'subView'}).
    otherwise({redirectTo:'/'});