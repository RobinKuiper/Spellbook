Template.registerHelper 'getUsername', (userId) ->
  Meteor.users.findOne(userId).username