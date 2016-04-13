character = null

Template.characterSheet.onRendered ->
  $('#sheetTabs .item').tab()

Template.characterSheet.helpers
  character: -> character = Character.findOne FlowRouter.getParam('characterId')

Template.characterSheet.events
  'click #increaseHP': ->
    if character.health.current < character.health.max
      Character.update character._id, { $inc: 'health.current': 1 }
  'click #decreaseHP': -> Character.update character._id, { $inc: 'health.current': -1 }

  'click #shortRest': ->
    currentHitDices = character.hitDice.current
    done = false
    for i in [0...currentHitDices.length]
      if !done
        if currentHitDices[i].amount > 0
          currentHitDices[i].amount -= 1
          Character.update character._id, { $set: 'hitDice.current': currentHitDices }
          done = true
  'click #longRest': ->
    currentHitDices = character.hitDice.current
    totalHitDices = character.hitDice.total
    for i in [0...currentHitDices.length]
      if currentHitDices[i].amount < totalHitDices[i].amount
        increaseWith = totalHitDices[i].amount / 2
        if currentHitDices[i].amount + increaseWith > totalHitDices[i].amount
          currentHitDices[i].amount = totalHitDices[i].amount
        else
          currentHitDices[i].amount += Math.round(increaseWith)
    Character.update character._id, { $set: 'hitDice.current': currentHitDices }

  'click #hitDice': ->
    sweetAlert
      title: "Are you sure?"
      text: "Use one dice?"
      type: "warning"
      showCancelButton: true
      confirmButtonColor: "green"
      confirmButtonText: "Use!"
      closeOnConfirm: true
    ,
      ->
        sAlert.success 'Used!'