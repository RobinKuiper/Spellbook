Session.setDefault 'previousRoute', ''

FlowRouter.route '/',
  name: 'home'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'spells' }

FlowRouter.route '/spells',
  name: 'spells'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'spells' }

FlowRouter.route '/spell/:spellSlug',
  name: 'showSpell'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'showSpell' }

FlowRouter.triggers.exit ->
  Session.set 'previousRoute', FlowRouter.getRouteName()