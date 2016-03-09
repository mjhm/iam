_ = require 'lodash'
{ expect } = require 'chai'
request = require 'superagent'
Promise = require 'bluebird'
Promise.promisifyAll request


module.exports = ->

  @Then /^the response is a JSON object$/, (data) ->
    target = JSON.parse data
    @request.then ({body}) ->
      expect(body).to.deep.equal(target)
