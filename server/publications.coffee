Meteor.publish 'spells', ->
  Spell.find {}

Meteor.publish 'classes', ->
  Class.find {}