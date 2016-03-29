Meteor.publish 'spells', (skip, limit, level, c, sortBy) ->
  select = {}
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

Meteor.publish 'classes', ->
  Class.find {}

Meteor.publish 'spellbook', (skip, limit, level, c, sortBy) ->
  #Spellbook.find { userId: @userId }

  select = {}

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