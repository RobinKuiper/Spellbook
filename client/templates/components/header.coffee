showSearch = new ReactiveVar false
Session.setDefault 'search', ''
t = ''

Template.header.helpers
  title: Settings.title
  isHomeRoute: -> FlowRouter.getRouteName() == Settings.homeRoute
  showSearch: -> showSearch.get()
  query: -> Session.get 'search'

Template.header.events
  'click #backButton': -> utils.back()
  'click #searchButton': ->
    showSearch.set true
    Meteor.setTimeout ->
      $('#searchInput').focus()
    , 1000

    t = Meteor.setTimeout ->
      showSearch.set false
    , 10000
  'keyup #searchInput': (e) ->
    Meteor.clearTimeout t
    t = Meteor.setTimeout ->
      showSearch.set false
    , 10000
    Session.set 'search', e.target.value