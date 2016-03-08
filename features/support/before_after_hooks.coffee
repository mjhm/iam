
# Promise = require 'bluebird'
helpers = require './helpers'
IamServer = require '../../src/server'
config = require '../../config'


module.exports = ->

  @Before (scenario, done) ->
    @iamServer = new IamServer()
    @iamServer.listen config.port, ->
      console.log "IamServer in #{config.env} mode listening on #{config.port}"
      done()

  @After (scenario, done) ->
    @iamServer.stop(done)
    # Promise.all [
    #   Promise.promisify(@somatixServer.stop)()
    #   Promise.promisify(@mockServices.stop)()
    #   @client.end()
    # ]


  # Start and shut down selenium
  # seleniumInstance = null
  #
  # @registerHandler 'BeforeFeatures', (event, done) ->
  #   selenium.start {}, (err, instance) ->
  #     throw err if err
  #     seleniumInstance = instance
  #     done()
  #
  # @registerHandler 'AfterFeatures', (event, done) ->
  #   seleniumInstance.kill()
  #   done()
