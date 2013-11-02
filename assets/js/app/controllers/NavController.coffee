@NavController = ["$scope","$location",($scope,$location)->
  $scope.navItems = [
    {url:"#/",name:"Start"}
    {url:"#/first",name:"first"}
    {url:"#/second",name:"second"}
  ]

  $scope.isActive = (page)->
    return if page.split("#")[1] is $location.path() then "active" else ""
]


