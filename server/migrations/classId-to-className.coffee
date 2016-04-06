Migrations.add
  version: 10
  name: 'Change class Ids to class names'
  up: ->
    spells = Spell.find {}
    spells.forEach (spell) ->
      classes = []
      for i in spell.classes
        classes.push Class.findOne(i).name
      Spell.update { _id: spell._id }, { $set: classes: classes }