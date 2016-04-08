Meteor.methods
  log: (q) ->
    console.log q

  addSpell: (spellId, characterId) ->
    if(!Spellbook.findOne { characterId: characterId, spellId: spellId })
      s = Spell.findOne spellId

      delete s._id
      s.userId = @userId
      s.characterId = characterId
      s.spellId = spellId

      Spellbook.insert s, (err, result) ->
        if err
          console.log err
        else
          return result

  removeSpell: (spellId, characterId) ->
    Spellbook.remove { userId: @userId, spellId: spellId, characterId: characterId }, (err, result) ->
      if err
        throw new Meteor.Error err
      else
        return result

  addCharacter: (char) ->
    levels = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    if(char.name.length > 2)
      char.userId = @userId
      Character.insert char, (err, result) ->
        if err
          throw new Meteor.Error err
        else
          return result
    else
      throw new Meteor.Error 'Not allowed with this data.'

  countSpells: -> Spell.find().count()
  countCharacters: -> Character.find().count()
  countUsers: -> Meteor.users.find().count()