character = null

Template.sheetCore.onRendered ->
  $('#level').dropdown
    onChange: (value) ->
      Meteor.call 'increaseClassLevel', character._id, value, (err, result) ->
        if !err
          longRest(true)

Template.sheetCore.helpers
  character: -> character = Character.findOne FlowRouter.getParam('characterId')
  classes: ->
    character = Character.findOne FlowRouter.getParam('characterId')
    classNames = []
    for i in [0...character.classes.length]
      classNames.push character.classes[i].name
    Class.find { name: $nin: classNames }

decreaseHPinterval = null
increaseHPinterval = null
Template.sheetCore.events
  'mousedown #increaseHP': ->
    increaseHP(character)
    increaseHPinterval = Meteor.setInterval increaseHP, 200
  'mouseup #increaseHP': -> Meteor.clearInterval(increaseHPinterval)
  'mousedown #decreaseHP': ->
    decreaseHP(character)
    decreaseHPinterval = Meteor.setInterval decreaseHP, 200
  'mouseup #decreaseHP': -> Meteor.clearInterval(decreaseHPinterval)

  'click #shortRest': ->
    shortRest()
  'click #longRest': ->
    longRest(false)

  ###'click #level': ->
    if character.classes.length == 1
      sweetAlert
        title: "Level up?"
        text: "Do you want to add one level?"
        type: "warning"
        showCancelButton: true
        confirmButtonColor: "green"
        confirmButtonText: "Yes!"
        closeOnConfirm: true
      ,
        ->
          Character.update character._id, { $inc: 'classes[0].level': 1 }###

increaseHP = ->
  if character.health.current < character.health.max
    Character.update character._id, { $inc: 'health.current': 1 }

decreaseHP = ->
  Character.update character._id, { $inc: 'health.current': -1 }

shortRest = ->
  currentHitDices = character.hitDice.current
  done = false
  for i in [0...currentHitDices.length]
    if !done
      if currentHitDices[i].amount > 0
        currentHitDices[i].amount -= 1
        Character.update character._id, { $set: 'hitDice.current': currentHitDices }
        done = true

longRest = (max) ->
  currentHitDices = character.hitDice.current
  totalHitDices = character.hitDice.total
  if !max
    for i in [0...currentHitDices.length]
      if currentHitDices[i].amount < totalHitDices[i].amount
        increaseWith = totalHitDices[i].amount / 2
        if currentHitDices[i].amount + increaseWith > totalHitDices[i].amount
          currentHitDices[i].amount = totalHitDices[i].amount
        else
          currentHitDices[i].amount += Math.floor(increaseWith)
  else
    currentHitDices = totalHitDices
  Character.update character._id, { $set: { 'hitDice.current': currentHitDices, 'health.current': character.health.max }}