config = require './config'
IamServer = require './src/server'

new IamServer().listen config.port, ->
  console.log "Server in #{config.env} mode listening on #{config.port}"
