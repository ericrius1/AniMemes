@Home = ["$scope","api","$location",($scope,api,$location)->
  $scope.items = []
  api.get (items)->
    $scope.items = items
  api.post {data:"this is data"}, ()->
    console.log "posted some data"
  $scope.activeLocation = $location.path()
]


