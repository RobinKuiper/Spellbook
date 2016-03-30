Session.setDefault 'showSignUpModal', false

Tracker.autorun ->
  if Session.get 'showSignUpModal'
    $('#signUpModal').modal({
      onHide: -> Session.set 'showSignUpModal', false
    }).modal 'show'

Template.mainLayout.onRendered ->
  $('.ui.sidebar')
    .sidebar({
      context: '#content'
      transition: 'overlay'
    })