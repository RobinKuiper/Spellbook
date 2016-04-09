Meteor.startup ->
  Session.setDefault 'showSignUpModal', false
  Session.setDefault 'showAddToSpellbookModal', false
  Session.setDefault 'spellToAdd', ''

  f =
    sources: []
    components: []
    ranges: []
    extra: []
    level: ''
    classes: ''
  @filters = new ReactiveObject(f)

Tracker.autorun ->
  if Session.get 'showSignUpModal'
    $('#signUpModal').modal({
      onHide: -> Session.set 'showSignUpModal', false
    }).modal 'show'