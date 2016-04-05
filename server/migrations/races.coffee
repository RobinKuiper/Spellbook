Migrations.add
  version: 1
  name: 'Add races'
  up: ->
    races = [
      {
        name: 'Dwarf'
      }
      {
        name: 'Elf'
      }
      {
        name: 'Halfling'
      }
      {
        name: 'Human'
      }
      {
        name: 'Dragonborn'
      }
      {
        name: 'Gnome'
      }
      {
        name: 'Half-Elf'
      }
      {
        name: 'Half-Orc'
      }
      {
        name: 'Tiefling'
      }
    ]

    races.forEach (race) ->
      race.createdAt = new Date()
      Race.insert race