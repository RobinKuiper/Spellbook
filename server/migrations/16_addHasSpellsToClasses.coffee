Migrations.add
  version: 16
  name: 'Add has spells field to classes'
  up: ->
    Class.update {}, { $set: hasSpells: false }
    for className in ['Bard', 'Druid', 'Cleric', 'Paladin', 'Ranger', 'Sorcerer', 'Warlock', 'Wizard']
      Class.update { name: className }, { $set: hasSpells: true }