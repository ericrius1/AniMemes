mongoose = require "mongoose"
modelSchema = mongoose.Schema
  time:
    type: Date, default: Date.now
  data: {}
,
  strict: "throw"

module.exports = exports = (connection)->
  return connection.model('Model', modelSchema)
