schema = require './accountgrouproles.schema'

# don't delete database entries but set the newly added attribute 
# deletedAt to the current date (when deletion was done). 
# paranoid will only work if timestamps are enabled
options = 
  paranoid: true
  timestamps: true

# return function to create sequelize model using provided schema and options
module.exports = (app) -> (app.get 'sequelize').define 'account_group_roles', schema, options