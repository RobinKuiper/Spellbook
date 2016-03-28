Meteor.methods
  addSpell: (spellId) ->
    if(!Spellbook.findOne { userId: @userId, spellId: spellId })
      spell = Spell.findOne spellId
      Spellbook.insert { userId: @userId, spellId: spellId, spell: spell }, (err, result) ->
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