character = null
selectedDice = new ReactiveVar null

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
  isOneDice: -> (character.hitDice.total.length == 1)
  isSelectedDice: (dice) -> return if(dice == selectedDice.get()) then 'hitDice item selected' else 'hitDice item'

decreaseHPinterval = null
increaseHPinterval = null
Template.sheetCore.events
  'click .hitDice': (e) -> selectedDice.set($(e.currentTarget).attr('id'))
    
  'mousedown #increaseHP': ->
    increaseHP(character)
    increaseHPinterval = Meteor.setInterval increaseHP, 200
  'mouseup #increaseHP': -> Meteor.clearInterval(increaseHPinterval)
  'mousedown #decreaseHP': ->
    decreaseHP(character)
    decreaseHPinterval = Meteor.setInterval decreaseHP, 200
  'mouseup #decreaseHP': -> Meteor.clearInterval(decreaseHPinterval)

  'click #shortRest': ->
    if character.hitDice.total.length > 1
      if selectedDice.get() == null
        sweetAlert
          title: "No hit dice selected."
          text: "Please select an hit dice first by clicking on it."
          type: "error"
          timer: 3000
        return false

    Meteor.call 'useHitDice', character._id, selectedDice.get(), (err) ->
      if err
        sweetAlert
          title: 'Oops...'
          text: err.error
          type: 'error'
          timer: 3000
  'click #longRest': ->
    longRest(false)

increaseHP = ->
  if character.health.current < character.health.max
    Character.update character._id, { $inc: 'health.current': 1 }

decreaseHP = ->
  Character.update character._id, { $inc: 'health.current': -1 }

longRest = (max) ->
  if character.health.current > 0
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
  else
    sweetAlert
      title: "You need to stabalize first."
      text: "You can't long rest with less then 1 HP."
      type: "error"
      timer: 3000