Template.mainLayout.onRendered ->
  $('.ui.sidebar')
    .sidebar({
      #context: '#content'
      transition: 'overlay'
    })

Template.mainLayout.helpers
  showAddToSpellbookModal: -> Session.get 'showAddToSpellbookModal'