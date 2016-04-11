Template.sidebar.onRendered ->
  $('#menuSidebar a').click ->
    $('.ui.sidebar').sidebar('hide')

Template.sidebar.events
  'click a': (e) ->
    $('.ui.sidebar').sidebar('hide')