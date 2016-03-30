showSearch = new ReactiveVar false
Session.setDefault 'search', ''
t = ''

Template.header.helpers
  title: -> FlowRouter.getRouteName().charAt(0).toUpperCase() + FlowRouter.getRouteName().slice(1) #Settings.title
  isHomeRoute: -> FlowRouter.getRouteName() == Settings.homeRoute
  isBackRoute: -> (FlowRouter.getRouteName() != Settings.homeRoute && FlowRouter.getRouteName() != 'characters')
  isCharactersRoute: -> FlowRouter.getRouteName() == 'characters'
  showSearch: -> showSearch.get()
  query: -> Session.get 'search'

Template.header.events
  'click #backButton': -> utils.back()
  'click #sidebarButton': -> $('.ui.sidebar').sidebar('toggle')
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