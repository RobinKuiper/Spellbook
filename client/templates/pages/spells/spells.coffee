sortBy = new ReactiveVar 'name'
level = new ReactiveVar('')
# C = class
C = new ReactiveVar('')
#verbal = new ReactiveVar true
#somatic = new ReactiveVar true
type = new ReactiveVar 'all'
limit = new ReactiveVar 10
#group = { done: [] }

Tracker.autorun ->
  Meteor.subscribe 'spells', 0, limit.get(), level.get(), C.get(), sortBy.get(), Session.get 'search'
  #Meteor.subscribe 'spellbook', Session.get('characterId'), 0, limit.get(), level.get(), C.get(), sortBy.get(), Session.get 'search'

Template.spells.onCreated ->
  Session.set 'characterId', if Character.findOne FlowRouter.getParam('characterId') then FlowRouter.getParam('characterId') else ''
  if Meteor.Device.isDesktop() then limit.set 20

Template.spells.onRendered ->
  C.set ''
  level.set ''
  sortBy.set 'name'

  $('#levelDropdown').dropdown
    onChange: (value) ->
      level.set if value == 'all' then '' else value

  $('#classDropdown').dropdown
    onChange: (value) ->
      C.set if value == 'all' then '' else value

  $('#sortDropdown').dropdown
    onChange: (value) ->
      sortBy.set value

  $(window).on 'scroll', (e) ->
    if $(window).scrollTop() + $(window).height() == $(document).height()
      console.log 'bottom'
      limit.set limit.get()+10

    #$('#alphabetSidebar').show()

  #$(window).on 'touchstart touchmove mouseover click', '#alphabetSidebar a', (e) ->
    # Code

  ###
    $('#verbalCheckbox').checkbox({
      onChecked: ->
        verbal.set true
      onUnchecked: ->
        verbal.set false
    }).checkbox('set checked')
    $('#somaticCheckbox').checkbox({
      onChecked: ->
        somatic.set true
      onUnchecked: ->
        somatic.set false
    }).checkbox('set checked')
  ###

Template.spells.helpers
  classes: -> Class.find {}
  #spells: -> spellPaginator.find {}, { itemsPerPage: 10 }
  isCharacter: -> FlowRouter.getRouteName() == 'characterSpells'
  group: (spell) ->
    if sortBy.get() == 'name'
      firstLetter = spell.name.substring 0, 1
      if group.done.indexOf(firstLetter) < 0
        group.done.push firstLetter
        return firstLetter
    if sortBy.get() == 'level'
      if group.done.indexOf(spell.level) < 0
        group.done.push spell.level
        return spell.level
  spells: ->
    if Character.findOne Session.get 'characterId'
      filter = { sort: {} }
      filter.sort[sortBy.get()] = 1

      select = {}
      select.characterId = Session.get 'characterId'
      if level.get() != ''
        select['spell.level'] = level.get()*1
      if C.get() != ''
        select['spell.classes'] = C.get()
      spellbook = Spellbook.find select, filter
      spells = []
      spellbook.forEach (spell) ->
        spells.push spell.spell

      return spells
    else
      filter = { sort: {} }
      filter.sort[sortBy.get()] = 1
      Spell.find {}, filter
  levels: -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  letters: -> 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split ''

Template.spells.events
  'click #spells .item': (e) ->
    spellId = $(e.currentTarget).attr('id')
    FlowRouter.go '/spell/'+spellId
  'click #allSpellsButton': ->
    type.set 'all'
  'click #mySpellsButton': ->
    type.set 'my'