Meteor.methods
  log: (q) ->
    console.log q

  addSpell: (spellId, characterId) ->
    if(!Spellbook.findOne { characterId: @userId, spellId: spellId })
      spell = Spell.findOne spellId
      Spellbook.insert { userId: @userId, characterId: characterId, spellId: spellId, spell: spell }, (err, result) ->
        if err
          throw new Meteor.Error err
        else
          return result

  removeSpell: (spellId) ->
    Spellbook.remove { userId: @userId, spellId: spellId }, (err, result) ->
      if err
        throw new Meteor.Error err
      else
        return result

  addAdmin: ->
    if Meteor.users.find().count() == 1
      Roles.addUsersToRoles Meteor.user()._id, ['admin'], 'default'

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