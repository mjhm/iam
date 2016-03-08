express = require 'express'
exprestive = require 'exprestive'
http = require 'http'

module.exports = class IamServer
  constructor: ->
    app = express()
    @httpServer = http.createServer(app)

    app.get '/', (req, res) ->
      res.send 'Hello World!'
    app.use exprestive()

  listen: (args...) ->
    @httpServer.listen(args...)

  stop: (done) ->
    @httpServer.close(done)
