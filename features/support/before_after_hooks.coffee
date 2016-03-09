
# Promise = require 'bluebird'
helpers = require './helpers'
IamServer = require '../../src/server'
config = require '../../config'


module.exports = ->

  @Before (scenario, done) ->
    @serverHost = "localhost:#{config.port}"
    @iamServer = new IamServer()
    @iamServer.listen config.port, ->
      console.log "IamServer in #{config.env} mode listening on #{config.port}"
      done()

  @After (scenario, done) ->
    @iamServer.stop(done)
