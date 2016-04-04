spellCount = new ReactiveVar()
characterCount = new ReactiveVar()
userCount = new ReactiveVar()

Template.about.onCreated ->
  Meteor.call 'countSpells', (err, result) ->
    spellCount.set result

  Meteor.call 'countCharacters', (err, result) ->
    characterCount.set result

  Meteor.call 'countUsers', (err, result) ->
    userCount.set result

Template.about.helpers
  spellCount: -> spellCount.get()
  characterCount: -> characterCount.get()
  charPerUser: -> Math.round( characterCount.get() / userCount.get() )