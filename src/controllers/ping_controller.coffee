
module.exports = class PingController
  index: (req, res) ->
    res.json ping: true
