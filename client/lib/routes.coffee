Session.setDefault 'previousRoute', ''

FlowRouter.route '/',
  name: 'home'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'spells' }

FlowRouter.route '/spells',
  name: 'spells'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'spells' }

FlowRouter.route '/spell',
  action: ->
    FlowRouter.go '/'

FlowRouter.route '/spell/:spellSlug',
  name: 'showSpell'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'showSpell' }

characterSection = FlowRouter.group
  prefix: '/characters'

characterSection.route '/mine',
  name: 'characters'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'myCharacters' }

characterSection.route '/add',
  name: 'addCharacter'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'addCharacter' }

characterSection.route '/:characterId/spells',
  name: 'characterSpells'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'spells' }

adminSection = FlowRouter.group
  prefix: '/admin'

adminSection.route '/spell/add',
  name: 'addSpell'
  action: ->
    BlazeLayout.render 'adminLayout', { content: 'addSpell' }

FlowRouter.triggers.exit ->
  Session.set 'previousRoute', FlowRouter.getRouteName()