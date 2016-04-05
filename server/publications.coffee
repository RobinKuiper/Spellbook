Meteor.publish 'spells', (skip, limit, level, c, sortBy, search) ->
  select = {}
  if search != '' && search != null
    select.name = { $regex: utils.RegExp.escape(search), $options: 'i' }
  if level != ''
    select.level = level*1
  if c != ''
    select.classes = c

  filter =
    sort: {}
    skip: skip || 0
    limit: limit || 10
  filter.sort[sortBy] = 1
  Spell.find select, filter

Meteor.publish 'spellbooks', ->
  Spellbook.find { userId: @userId }

Meteor.publish 'spellbook', (characterId, skip, limit, level, c, sortBy, search) ->
  select = {}
  select.characterId = characterId
  select.userId = @userId
  if search != ''
    select['spell.name'] = { $regex: utils.RegExp.escape(search), $options: 'i' }
  if level != ''
    select['spell.level'] = level*1
  if c != ''
    select['spell.classes'] = c

  filter =
    sort: {}
    skip: skip || 0
    limit: limit || 10
  filter.sort['spell.'+sortBy] = 1

  Spellbook.find select, filter

Meteor.publish 'classes', ->
  Class.find {}

Meteor.publish 'races', ->
  Race.find {}

Meteor.publish 'characters', ->
  Character.find { userId: @userId }