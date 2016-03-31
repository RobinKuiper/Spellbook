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
    if Meteor.user()
      Spellbook.findOne { userId: Meteor.user()._id, spellId: spellId }

Template.showSpell.events
  'click #addButton': ->
    if Meteor.user()
      Meteor.call 'addSpell', spellId, (err, result) ->
        if err
          console.log err
    else
      Session.set 'showSignUpModal', true
  'click #removeButton': ->
    Meteor.call 'removeSpell', spellId, (err, result) ->
      if err
        console.log err