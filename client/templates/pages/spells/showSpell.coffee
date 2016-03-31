spellId = ''

Template.showSpell.onCreated ->
  spellSlug = FlowRouter.getParam('spellSlug')
  if !spell = Spell.findOne { slug: spellSlug }
    utils.back()
  else
    spellId = spell._id

Template.showSpell.helpers
  spell: -> Spell.findOne spellId
  inSpellbook: ->
    characters = []
    if Meteor.user()
      inSpellbooks = Spellbook.find { userId: Meteor.user()._id, spellId: spellId }
      inSpellbooks.forEach (spellbook) ->
        characters.push Character.findOne spellbook.characterId
      return characters

Template.showSpell.events
  'click #addButton': ->
    if Meteor.user()
      Session.set 'showAddToSpellbookModal', true
    else
      Session.set 'showSignUpModal', true
  'click #removeButton': ->
    Meteor.call 'removeSpell', spellId, (err, result) ->
      if err
        console.log err


###
  Meteor.call 'addSpell', spellId, (err, result) ->
        if err
          console.log err
###