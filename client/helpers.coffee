Template.registerHelper 'getUsername', (userId) ->
  Meteor.users.findOne(userId).username

Template.registerHelper 'count', (array) ->
  console.log array
  return if array == undefined then 0 else array.length

Template.registerHelper 'formatLevel', (level) ->
  switch level
    when 0 then 'Cantrip'
    when 1 then level + 'st level'
    when 2 then level + 'nd level'
    when 3 then level + 'rd level'
    when 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 then level + 'th level'

Template.registerHelper 'formatSmallLevel', (level) ->
  return if level == 0 then 'c' else level

Template.registerHelper 'formatRange', (range) -> utils.format.range(range)

Template.registerHelper 'isRoute', (name) -> FlowRouter.getRouteName() == name

utils.back = ->
    route = if Session.get 'previousRoute' == '' then Settings.homeRoute else Session.get 'previousRoute'
    FlowRouter.go route