_ = require 'lodash'
{ expect } = require 'chai'
request = require 'superagent'
Promise = require 'bluebird'
Promise.promisifyAll request


module.exports = ->

  @Given /^the client requests "(.*)"$/, (route) ->
    @request = request
      .get "#{@serverHost}/#{route}"
      .endAsync()
