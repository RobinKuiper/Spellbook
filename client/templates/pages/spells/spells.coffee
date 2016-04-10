sortBy = new ReactiveVar 'name'
level = new ReactiveVar('')
# C = class
C = new ReactiveVar('')
#verbal = new ReactiveVar true
#somatic = new ReactiveVar true
type = new ReactiveVar 'all'
limit = new ReactiveVar 50
#group = { done: [] }
infiniteScroll = false
###counter = 0
spellCount = 50###

Template.spells.onCreated ->
  Session.set 'characterId', if Character.findOne FlowRouter.getParam('characterId') then FlowRouter.getParam('characterId') else ''
  type.set if Character.findOne FlowRouter.getParam('characterId') then 'my' else 'all'

  self = this
  self.autorun ->
    if FlowRouter.getRouteName() == 'home'
      $(window).on 'scroll', (e) ->
        if $(window).scrollTop() + $(window).height() == $(document).height()
          console.log 'bottom'
          infiniteScroll = true
          limit.set limit.get()+50
    else
      $(window).unbind('scroll')

Template.spells.onRendered ->
  C.set ''
  level.set ''
  sortBy.set 'name'

  $('#levelDropdown').dropdown('set selected', filters.level).dropdown
    onChange: (value) ->
      level.set if value == 'all' then '' else value
      filters.level = if value == 'all' then '' else value

  $('#classDropdown').dropdown('set selected', filters.classes).dropdown
    onChange: (value) ->
      C.set if value == 'all' then '' else value
      filters.classes = if value == 'all' then '' else value

  $('#sortDropdown').dropdown
    onChange: (value) ->
      sortBy.set value

    #$('#alphabetSidebar').show()

  #$(window).on 'touchstart touchmove mouseover click', '#alphabetSidebar a', (e) ->
    # Code

Template.spells.helpers
  classes: -> Class.find { hasSpells: true }
  allSpells: -> type.get() == 'all'
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
    options =
      skip: 0
      limit: limit.get()
      props:
        classes: filters.classes
        level: filters.level
        sources: filters.sources
        components: filters.components
        ranges: filters.ranges
        extra: filters.extra
        sort: sortBy.get()
    if type.get() == 'all'
      spellIndex.search(Session.get('search'), options).fetch()
    else if type.get() == 'my'
      spellbookIndex.search(Session.get('search'), options).fetch()
  levels: -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  letters: -> 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split ''
  ###addAdsense: ->
    counter++
    console.log spellCount
    if ((counter % Math.round((spellCount / 1.20))) == 0)
      Meteor.setTimeout ->
        Adsense.add('.adsense')
      , 1000
      return true###

Template.spells.events
  'click #allSpellsButton': ->
    type.set 'all'
  'click #mySpellsButton': ->
    type.set 'my'
  'click #moreFilters': ->
    $('#filterSidebar').sidebar('toggle')