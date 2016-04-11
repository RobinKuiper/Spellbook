if Meteor.settings.public.inProduction
  console.log = -> {}
  console.error = -> {}