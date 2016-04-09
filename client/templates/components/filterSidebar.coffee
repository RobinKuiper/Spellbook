Template.filterSidebar.onRendered ->
  $('.ui.checkbox').checkbox()

  $('#filterSidebar .item').click (e) ->
    toggleFilter e.currentTarget

  $('#clearFilters').click -> clearFilter()

toggleFilter = (target) ->

  listId = $(target).closest('.list').attr('id')
  item = $(target).children('.content').html()

  if $(target).hasClass 'active'
    filters[listId].splice filters[listId].indexOf item
    $(target).children('i').removeClass('red').removeClass('remove').addClass('plus')
    $(target).removeClass 'active'

  else
    console.log listId
    filters[listId].push item
    $(target).children('i').removeClass('plus').addClass('red').addClass('remove')
    $(target).addClass 'active'

clearFilter = ->
  target = $('#filterSidebar .item')
  $(target).children('i').removeClass('red').removeClass('remove').addClass('plus')
  $(target).removeClass 'active'

  filters.sources     = []
  filters.components  = []
  filters.ranges      = []
  filters.extra       = []
