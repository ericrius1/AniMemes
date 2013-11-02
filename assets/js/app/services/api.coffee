AniMemeApp.factory "api",["$http",($http)->
  api = {}

  api.get = (cb)->
    $http.get("/get").success((data, status, headers, config)->
      cb(data)
    );
  api.post = (dataObj,cb)->
    $http.post("/post",dataObj).success((data, status, headers, config)->
      cb(data)
    );


  return api
]
