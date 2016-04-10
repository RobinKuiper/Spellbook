level = new ReactiveVar()
C = new ReactiveVar()
race = new ReactiveVar()
character = null

Template.addCharacter.onCreated ->
  if FlowRouter.getParam('characterId')
    character = Character.findOne FlowRouter.getParam('characterId')

Template.addCharacter.onRendered ->
  $('#levelDropdown').dropdown('set selected', character.level).dropdown
    onChange: (value) ->
      level.set value

  $('#classDropdown').dropdown('set selected', character.class).dropdown
    onChange: (value) ->
      C.set value

  $('#raceDropdown').dropdown('set selected', character.race).dropdown
    onChange: (value) ->
      race.set value

Template.addCharacter.helpers
  classes: -> Class.find {}
  races: -> Race.find {}
  levels: -> (num for num in [1..20])
  character: -> character

Template.addCharacter.events
  'submit form': (e) ->
    e.preventDefault()

    if e.target.name.value == '' ||
    race.get() == undefined || race.get() == '' ||
    level.get() == undefined || level.get() == '' ||
    C.get() == undefined || C.get() == ''
      sAlert.error 'Please fill in all the fields.'
    else
      char =
        name: e.target.name.value
        level: level.get()
        race: race.get()
        class: C.get()

      Meteor.call 'addCharacter', char, (err, result) ->
        if err
          sAlert.error err
        else
          if Session.get('spellToAdd') != ''
            Meteor.call 'addSpell', Session.get('spellToAdd'), result, (err, result) ->
              if err
                console.log err
              else
                Session.set 'spellToAdd', ''
          FlowRouter.go '/characters/'+result+'/spells'

