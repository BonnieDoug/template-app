createService = require 'feathers-sequelize'

createModel = require './users.model'
hooks = require './users.hooks'

module.exports = ->
  app = @ 
  options =
    Model: createModel app
    paginate: app.get 'paginate'
  app.use '/users', createService options
  (app.service 'users').hooks hooks
  return