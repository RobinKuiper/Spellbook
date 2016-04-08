slug = new ReactiveVar null
spellId = new ReactiveVar null
characterId = ''
spellReady = new ReactiveVar false
spellbookReady = new ReactiveVar false

Template.showSpell.onCreated ->
  characterId = Session.get 'characterId'
  slug.set FlowRouter.getParam('spellSlug')

  self = this
  self.autorun ->
    spellReady.set false
    subscription = Meteor.subscribe 'spell', slug.get()
    if subscription.ready()
      if Spell.findOne { slug: slug.get() }
        spellReady.set true
      else
        history.back()

  self.autorun ->
    spellbookReady.set false
    subscription = Meteor.subscribe 'spellbookSpell', characterId, slug.get()
    if subscription.ready()
      spellbookReady.set true

Template.showSpell.helpers
  character: -> Character.findOne characterId
  spell: ->
    if spell = Spell.findOne { slug: slug.get() }
      spellId.set spell._id
      return spell
  inSpellbook: -> Spellbook.findOne {}

  # Loading checks
  spellReady: -> spellReady.get()
  spellbookReady: -> spellbookReady.get()

Template.showSpell.events
  'click #addButton': ->
    if Meteor.user()
      if Character.findOne characterId
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