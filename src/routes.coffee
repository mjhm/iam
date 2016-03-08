module.exports = ({resources}) ->
  resources 'ping',  only: ['index']
  resources 'tokens',  only: ['create']
