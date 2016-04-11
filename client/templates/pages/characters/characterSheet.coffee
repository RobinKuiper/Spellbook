character = null

Template.characterSheet.onCreated ->
  character = Character.findOne FlowRouter.getParam('characterId')

Template.characterSheet.onRendered ->
  $('#sheetAccordion').accordion()

Template.characterSheet.helpers
  character: -> character