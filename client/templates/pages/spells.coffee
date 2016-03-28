sortBy = new ReactiveVar 'name'
level = new ReactiveVar('')
# C = class
C = new ReactiveVar('')
type = new ReactiveVar 'all'

Template.spells.onRendered ->
  $('#levelDropdown').dropdown
    onChange: (value) ->
      level.set if value == 'all' then '' else value

  $('#classDropdown').dropdown
    onChange: (value) ->
      C.set if value == 'all' then '' else value

  $('#sortDropdown').dropdown
    onChange: (value) ->
      sortBy.set value

Template.spells.helpers
  classes: -> Class.find {}
  spells: ->
    if type.get() == 'my'
      select = {}

      if level.get() != ''
        select['spell.level'] = level.get()*1
      if C.get() != ''
        select['spell.classes'] = C.get()

      filter = { sort: {} }
      filter.sort['spell.'+sortBy.get()] = 1

      spellbook = Spellbook.find select, filter

      spells = []
      spellbook.forEach (spell) ->
        spells.push spell.spell

      return spells
    else
      select = {}
      if level.get() != ''
        select.level = level.get()*1
      if C.get() != ''
        select.classes = C.get()

      filter = { sort: {} }
      filter.sort[sortBy.get()] = 1
      Spell.find select, filter
  levels: -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

Template.spells.events
  'click #spells .item': (e) ->
    spellId = $(e.currentTarget).attr('id')
    FlowRouter.go '/spell/'+spellId
  'click #allSpellsButton': ->
    type.set 'all'
  'click #mySpellsButton': ->
    type.set 'my'