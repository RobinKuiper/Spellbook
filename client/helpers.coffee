Meteor.startup ->
  Session.set 'showSignUpModal', false

Template.registerHelper 'getUsername', (userId) ->
  Meteor.users.findOne(userId).username

Template.registerHelper 'formatLevel', (level) ->
  switch level
    when 0 then 'Cantrip'
    when 1 then level + 'st level'
    when 2 then level + 'nd level'
    when 3 then level + 'rd level'
    when 4, 5, 6, 7, 8, 9 then level + 'th level'

Template.registerHelper 'formatSmallLevel', (level) ->
  return if level == 0 then 'c' else level

@utils =
  back: ->
    route = if Session.get 'previousRoute' == '' then Settings.homeRoute else Session.get 'previousRoute'
    FlowRouter.go route