Template.header.helpers
  title: Settings.title
  isHomeRoute: -> FlowRouter.getRouteName() == Settings.homeRoute

Template.header.events
  'click #backButton': -> utils.back()