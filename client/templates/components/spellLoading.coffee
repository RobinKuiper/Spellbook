noSpells = new ReactiveVar false

Template.spellLoading.onRendered ->
  noSpells.set false
  Meteor.setTimeout ->
    noSpells.set true
  , 5000

Template.spellLoading.helpers
  noSpells: -> noSpells.get()