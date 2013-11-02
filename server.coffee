path         = require "path"
express      = require "express"
db           = require './lib/db'
modelFactory = require './lib/models/model'
config       = require './config/config'

app = express()
app.configure ()->
  app.use express.bodyParser()
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'jade'
  app.use (require 'connect-assets')()
  app.use "/css",express.static path.join __dirname,"assets/css"

app.get "/",(req,res)->
  res.render "index"

app.get "/homeView",(req,res)->
  res.render "homeView"

if config.db
  model = modelFactory db.connect config.db

  app.get "/get",(req,res)->
    model.find().limit(10).sort({time: -1}).exec (err,data)->
      if err then throw err
      res.send 200,data

  app.post "/post",(req,res)->
    postData = req.body
    model.create {data:postData.data}, (err)->
      if err then throw err
      res.send 200
else
  app.get "/get",(req,res)->
    res.send 200,{}

  app.post "/post",(req,res)->
    res.send 200

httpServer = app.listen 3006, ->
  console.log "......................................"
  console.log "Environment set to: " + process.env.NODE_ENV
  console.log "Listen to port: " + 3006
  console.log "......................................"

