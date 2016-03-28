Template.addSpell.onRendered ->
  $('.dropdown').dropdown()

Template.addSpell.helpers
  classes: -> Class.find {}
  levels: -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]