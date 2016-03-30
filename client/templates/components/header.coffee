showSearch = new ReactiveVar false
Session.setDefault 'search', ''

Template.header.helpers
  title: Settings.title
  isHomeRoute: -> FlowRouter.getRouteName() == Settings.homeRoute
  showSearch: -> showSearch.get()

Template.header.events
  'click #backButton': -> utils.back()
  'click #searchButton': ->
    showSearch.set true
    Meteor.setTimeout ->
      $('#searchInput').focus()
    , 1000
  'keyup #searchInput': (e) -> Session.set 'search', e.target.value