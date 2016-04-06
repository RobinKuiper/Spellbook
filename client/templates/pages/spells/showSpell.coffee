spellId = ''
characterId = ''
spellReady = new ReactiveVar false

Template.showSpell.onCreated ->
  characterId = Session.get 'characterId'

  spellSlug = FlowRouter.getParam('spellSlug')
  if !spell = Spell.findOne { slug: spellSlug }
    history.back()
  else
    spellId = spell._id
    self = this
    self.autorun ->
      spellReady.set false
      subscription = Meteor.subscribe 'spell', spellId
      if subscription.ready()
        spellReady.set true

Template.showSpell.helpers
  character: -> Character.findOne characterId
  spell: -> Spell.findOne spellId
  inSpellbook: -> Spellbook.findOne { characterId: characterId, spellId: spellId }
  spellReady: -> spellReady.get()

Template.showSpell.events
  'click #addButton': ->
    if Meteor.user()
      if character = Character.findOne characterId
        Meteor.call 'addSpell', spellId, characterId, (err, result) ->
          if err
            console.log err
      else
        Session.set 'showAddToSpellbookModal', true
    else
      Session.set 'showSignUpModal', true
  'click #removeButton': ->
    Meteor.call 'removeSpell', spellId, characterId, (err, result) ->
      if err
        console.log err