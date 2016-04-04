Template.myCharacters.helpers
  characters: -> Character.find {}
  countSpells: (characterId) -> Spellbook.find({ characterId: characterId }).count()

Template.myCharacters.events
  'click #characters .item': (e) ->
    characterId = $(e.currentTarget).attr('id')
    FlowRouter.go '/characters/'+characterId+'/spells'