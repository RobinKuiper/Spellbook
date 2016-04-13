###Migrations.add
  version: 18
  name: 'Add stats to characters'
  up: ->
    # Find all characters
    characters = Character.find {}
    characters.forEach (character) ->
      # Loop to all characters
      character.classes = []
      character.classes.push { name: character.class, level: character.level }
      delete character.class
      delete character.level
      character.abilities =
        strength: 1
        constitution: 1
        dexterity: 1
        intelligence: 1
        wisdom: 1
        charisma: 1
      console.log character
      Character.update character._id, { $set: character }###