sortBy = new ReactiveVar 'name'
level = new ReactiveVar('')
# C = class
C = new ReactiveVar('')

Template.spells.onRendered ->
  $('#levelDropdown').dropdown
    onChange: (value) ->
      level.set if value == 'all' then '' else value

  $('#classDropdown').dropdown
    onChange: (value) ->
      C.set if value == 'all' then '' else value

Template.spells.helpers
  classes: -> Class.find {}
  spells: ->
    select = {}
    if level.get() != ''
      if level.get() == 'cantrip'
        select.level = 0
      else
        select.level = level.get()*1
    if C.get() != ''
      select.classes = C.get()

    filter = { sort: {} }
    filter.sort[sortBy.get()] = 1
    Spell.find select, filter

Template.spells.events
  'click #sortByLevelButton': ->
    sortBy.set 'level'
  'click #sortByNameButton': ->
    sortBy.set 'name'
  'click #levelDropdown .item': ->
