nodeEnv = process.env.NODE_ENV ? 'development'

module.exports =

  env: nodeEnv
  port: process.env.PORT ? 3000
