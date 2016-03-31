Template.myCharacters.helpers
  characters: -> Character.find {}

Template.myCharacters.events
  'click #characters .item': (e) ->
    characterId = $(e.currentTarget).attr('id')
    FlowRouter.go '/characters/'+characterId+'/spells'