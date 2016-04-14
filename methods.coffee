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

      if Meteor.isClient
        analytics.track 'Add Spell',
          spell: s.name
          characterId: characterId

      Spellbook.insert s, (err, result) ->
        if err
          console.log err
        else
          return result

  removeSpell: (spellId, characterId) ->
    if Meteor.isClient
      analytics.track 'Add Spell',
        spellId: spellId
        characterId: characterId

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

  editCharacter: (char) ->
    if(char.name.length > 2)
      char.userId = @userId
      Character.update { _id: char._id, userId: @userId }, { $set: char }, (err, result) ->
        console.log result
        if err
          throw new Meteor.Error err
        else
          return result
    else
      throw new Meteor.Error 'Not allowed with this data.'

  countSpells: -> Spell.find().count()
  countCharacters: -> Character.find().count()
  countUsers: -> Meteor.users.find().count()
  hideAdsense: ->
    if inDevelopment
      return true

    if @userId
      if user = Meteor.users.findOne @userId
        if user.hideAdsense
          return true
        else
          return false
    return false

  increaseClassLevel: (characterId, className) ->
    if @userId
      c = Class.findOne { name: className }
      if Character.findOne { _id: characterId, 'classes.name': className }
        console.log 'Found class'
        Character.update { _id: characterId, 'classes.name': className }, { $inc: 'classes.$.level': 1, level: 1 }
        Character.update { _id: characterId, 'hitDice.total.dice': c.hitDice }, { $inc: 'hitDice.total.$.amount': 1 }
      else
        console.log 'Not Found class'
        if Character.findOne { _id: characterId, 'hitDice.total.dice': c.hitDice }
          Character.update { _id: characterId, 'hitDice.total.dice': c.hitDice }, { $inc: 'hitDice.total.$.amount': 1 }
        else
          Character.update characterId, { $push: 'hitDice.total': { dice: c.hitDice, amount: 1 } }
        Character.update characterId, { $inc: { level: 1 }, $push: { classes: { name: className, level: 1 } }}