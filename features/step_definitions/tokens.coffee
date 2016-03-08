
_ = require 'lodash'
{ expect } = require 'chai'
request = require 'superagent'
Promise = require 'bluebird'
Promise.promisifyAll request


module.exports = ->

  @Given /^noop$/, ->
    true

  @When /^the client requests a token$/, () ->
    # request
    #   .post '/tokens'
    #   .send {}
    #   .end()
    true

  @Then /^the response is a token$/, () ->
    expect(true).to.be.true
