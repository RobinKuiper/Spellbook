Meteor.methods
  addSpell: (spellId) ->
    if(!Spellbook.findOne { userId: @userId, spellId: spellId })
      Spellbook.insert { userId: @userId, spellId: spellId }, (err, result) ->
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