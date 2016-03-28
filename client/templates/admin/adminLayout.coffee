Tracker.autorun ->
  if Meteor.user()
    if !Roles.userIsInRole Meteor.user()._id, ['admin'], 'default'
      FlowRouter.go '/'