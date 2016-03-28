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

adminSection = FlowRouter.group
  prefix: '/admin'

adminSection.route '/spell/add',
  name: 'addSpell'
  action: ->
    BlazeLayout.render 'adminLayout', { content: 'addSpell' }

FlowRouter.triggers.exit ->
  Session.set 'previousRoute', FlowRouter.getRouteName()