spellSlug = new ReactiveVar()

Tracker.autorun ->
  spellSlug.set FlowRouter.getParam('spellSlug')

Template.addToSpellbookModal.onRendered ->
  Meteor.subscribe 'spellbook'

  $('#addToSpellbookModal').modal({
    onHide: -> Session.set 'showAddToSpellbookModal', false
  }).modal 'show'

  $('#addToSpellbookModal .item').click (e) ->
    characterId = $(e.currentTarget).attr('id')
    spellId = Spell.findOne({ slug: spellSlug.get() })._id
    if characterId == 'new'
      Session.set 'spellToAdd', spellId
      FlowRouter.go '/characters/add'
      $('#addToSpellbookModal').modal('hide')
    else
      Meteor.call 'addSpell', spellId, characterId, (err, result) ->
        if err
          console.log err
        else
          $('#addToSpellbookModal').modal('hide')

Template.addToSpellbookModal.helpers
  characters: -> Character.find {}
  inSpellbook: (characterId) ->
    if Spellbook.findOne { slug: spellSlug.get(), characterId: characterId }
      return 'item disabled'
    else
      return 'item'
