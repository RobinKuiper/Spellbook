Meteor.publish 'spells', ->
  Spell.find {}

Meteor.publish 'classes', ->
  Class.find {}

Meteor.publish 'spellbook', ->
  Spellbook.find { userId: @userId }