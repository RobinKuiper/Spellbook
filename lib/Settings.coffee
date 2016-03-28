@Setting = new Mongo.Collection 'settings'

@Settings =
  title: if setting = Setting.findOne({ name: 'title' }) then setting.value else 'Spellbook'
  homeRoute: if setting = Setting.findOne({ name: 'homeRoute' }) then setting.value else 'home'
  firstRun: if setting = Setting.findOne({ name: 'firstRun' }) then setting.value else true