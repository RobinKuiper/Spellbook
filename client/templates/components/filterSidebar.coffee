Template.filterSidebar.onRendered ->
  $('.ui.checkbox').checkbox()

  $('#filterSidebar .item').click (e) ->
    toggleFilter e.currentTarget

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

  console.log filters[listId]