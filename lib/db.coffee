mongoose = require "mongoose"
debug = require('debug')('express-angular-seed:db')

exports.connect = (config) ->
  connection = mongoose.createConnection config.uri,config.options
  connection.once 'open', () ->
    debug "mongoose connection at uri: #{config.uri} open"
  connection.on 'error', (err) ->
    throw err
  return connection
