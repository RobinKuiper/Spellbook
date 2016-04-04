Session.setDefault 'showSignUpModal', false
Session.setDefault 'showAddToSpellbookModal', false
Session.setDefault 'spellToAdd', ''

Tracker.autorun ->
  if Session.get 'showSignUpModal'
    $('#signUpModal').modal({
      onHide: -> Session.set 'showSignUpModal', false
    }).modal 'show'

Template.mainLayout.onRendered ->
  $('.ui.sidebar')
    .sidebar({
      #context: '#content'
      transition: 'overlay'
    })

Template.mainLayout.helpers
  showAddToSpellbookModal: -> Session.get 'showAddToSpellbookModal'