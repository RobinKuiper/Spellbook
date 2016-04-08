slug = new ReactiveVar null
spellId = new ReactiveVar null
characterId = ''
spellReady = new ReactiveVar false

Template.showSpell.onCreated ->
  characterId = Session.get 'characterId'

  self = this
  self.autorun ->
    slug.set FlowRouter.getParam('spellSlug')
    spellReady.set false
    subscription = Meteor.subscribe 'spell', slug.get()
    if subscription.ready()
      if Spell.findOne { slug: slug.get() }
        spellReady.set true
      else
        history.back()

Template.showSpell.helpers
  character: -> Character.findOne characterId
  spell: ->
    if spell = Spell.findOne { slug: slug.get() }
      spellId.set spell._id
      return spell
  inSpellbook: -> Spellbook.findOne { characterId: characterId, spellId: spellId.get() }
  spellReady: -> spellReady.get()

Template.showSpell.events
  'click #addButton': ->
    if Meteor.user()
      if character = Character.findOne characterId
        Meteor.call 'addSpell', spellId.get(), characterId, (err, result) ->
          if err
            console.log err
      else
        Session.set 'showAddToSpellbookModal', true
    else
      Session.set 'showSignUpModal', true
  'click #removeButton': ->
    Meteor.call 'removeSpell', spellId.get(), characterId, (err, result) ->
      if err
        console.log err