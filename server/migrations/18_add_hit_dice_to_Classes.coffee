Migrations.add
  version: 18
  name: 'Add hitDice to classes'
  up: ->
    dices =
      Barbarian: 'D12'
      Bard: 'D8'
      Cleric: 'D8'
      Druid: 'D8'
      Fighter: 'D10'
      Monk: 'D8'
      Paladin: 'D10'
      Ranger: 'D10'
      Rogue: 'D8'
      Sorcerer: 'D6'
      Warlock: 'D8'
      Wizard: 'D8'

    classes = Class.find {}
    classes.forEach (c) ->
      c.hitDice = dices[c.name]
      Class.update c._id, { $set: c }