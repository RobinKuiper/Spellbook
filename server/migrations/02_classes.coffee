Migrations.add
  version: 2
  name: 'Add classes'
  up: ->
    classes = [
      {
        name: 'Barbarian'
      }
      {
        name: 'Bard'
      }
      {
        name: 'Cleric'
      }
      {
        name: 'Druid'
      }
      {
        name: 'Fighter'
      }
      {
        name: 'Monk'
      }
      {
        name: 'Paladin'
      }
      {
        name: 'Ranger'
      }
      {
        name: 'Sorcerer'
      }
      {
        name: 'Rogue'
      }
      {
        name: 'Warlock'
      }
      {
        name: 'Wizard'
      }
    ]

    classes.forEach (c) ->
      c.createdAt = new Date()
      Class.insert c