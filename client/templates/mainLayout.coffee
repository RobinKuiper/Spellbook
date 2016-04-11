Template.mainLayout.onRendered ->
  $(window).on 'touchmove', ->
    $('.ui.sidebar').sidebar('hide')

  $('.ui.sidebar')
    .sidebar({
      #context: '#content'
      transition: 'overlay'
    })

Template.mainLayout.helpers
  showAddToSpellbookModal: -> Session.get 'showAddToSpellbookModal'