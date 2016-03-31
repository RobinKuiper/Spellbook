Template.sidebar.onRendered ->
  $('.sidebar a').click ->
    $('.ui.sidebar').sidebar('hide')

Template.sidebar.events
  'click a': (e) ->
    $('.ui.sidebar').sidebar('hide')