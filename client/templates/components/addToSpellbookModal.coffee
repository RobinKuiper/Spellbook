spellSlug = new ReactiveVar()

Tracker.autorun ->
  spellSlug.set FlowRouter.getParam('spellSlug')

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
    if spell = Spell.findOne({ slug: spellSlug.get() })
      spellId = spell._id
      if Spellbook.findOne { spellId: spellId, characterId: characterId }
        return 'item disabled'
      else
        return 'item'
