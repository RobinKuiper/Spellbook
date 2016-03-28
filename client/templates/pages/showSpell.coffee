spellId = ''

Template.showSpell.onCreated ->
  spellId = FlowRouter.getParam('spellId')
  if !Spell.findOne spellId
    utils.back()

Template.showSpell.helpers
  spell: -> Spell.findOne spellId
  inSpellbook: -> Spellbook.findOne { userId: Meteor.user()._id, spellId: spellId }

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