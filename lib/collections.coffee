@Spell = new Mongo.Collection 'spells'
@Class = new Mongo.Collection 'classes'
@Spellbook = new Mongo.Collection 'spellbooks'
@Character = new Mongo.Collection 'characters'

Class.friendlySlugs 'name'
Spell.friendlySlugs 'name'

schemas = {}

schemas.Class = new SimpleSchema
  name:
    type: String
    label: 'Name'
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> new Date()

schemas.Spell = new SimpleSchema
  name:
    type: String
    label: 'Name'
  slug:
    type: String
    optional: true
  version:
    type: Number
    defaultValue: 5
    allowedValues: [1, 2, 3, 3.5, 4, 5]
  book:
    type: Object
  'book.name':
    type: String
  'book.page':
    type: Number
  classes:
    type: [String]
  level:
    type: Number
    allowedValues: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  range:
    type: Number
  duration:
    type: String
  castingTime:
    type: String
  components:
    type: [String]
  descriptions:
    type: Object
  'descriptions.main':
    type: String
  'descriptions.level':
    type: String
    optional: true
  school:
    type: String
  oath:
    type: String
    optional: true
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> new Date()

schemas.Character = new SimpleSchema
  userId:
    type: String
    allowedValues: [@userId]
    defaultValue: @userId
  class:
    type: schemas.Class

schemas.Spellbook = new SimpleSchema
  userId:
    type: String
  spellId:
    type: String
  spell:
    type: schemas.Spell
  prepared:
    type: Boolean
    defaultValue: false

Spell.attachSchema schemas.Spell
Class.attachSchema schemas.Class
Spellbook.attachSchema schemas.Spellbook
Character.attachSchema schemas.Character

Spellbook.allow
  insert: (userId, doc) ->
    console.log userId
    console.log doc