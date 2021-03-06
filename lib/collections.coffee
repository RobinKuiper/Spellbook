@Spell = new Mongo.Collection 'spells'
@Class = new Mongo.Collection 'classes'
@Spellbook = new Mongo.Collection 'spellbooks'
@Character = new Mongo.Collection 'characters'
@Race = new Mongo.Collection 'races'

options =
  selector: (searchObject, options, aggregation) ->
    selector = @.defaultConfiguration().selector(searchObject, options, aggregation)

    props = options.search.props

    classes = props.classes
    level = props.level
    sources = props.sources
    components = props.components
    ranges = props.ranges
    extra = props.extra

    if classes != ''
      selector.classes = classes
    if level != ''
      selector.level = level*1
    if sources.length > 0
      selector['book.name'] = {}
      selector['book.name'].$in = sources
    if components.length > 0
      selector.components = {}
      selector.components.$in = components
    if ranges.length > 0
      selector.range = {}
      selector.range.$in = ranges
    if extra.length > 0
      if extra.indexOf 'Bonus Action' != -1
        selector.castingTime = '1 Bonus Action'

    return selector
  sort: (searchObject, options) ->
    sort = {}
    sort[options.search.props.sort] = 1
    return sort

@spellIndex = new EasySearch.Index
  collection: Spell
  fields: ['name']
  engine: new EasySearch.MongoDB options

@spellbookIndex = new EasySearch.Index
  collection: Spellbook
  fields: ['name']
  engine: new EasySearch.MongoDB options

Class.friendlySlugs 'name'
Spell.friendlySlugs 'name'

schemas = {}

schemas.Class = new SimpleSchema
  name:
    type: String
    label: 'Name'
  hasSpells:
    type: Boolean
    optional: true
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> new Date()

schemas.Race = new SimpleSchema
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
  material:
    type: String
    optional: true
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
  name:
    type: String
  userId:
    type: String
  class:
    type: String
  race:
    type: String
  level:
    type: Number
    allowedValues: [1, 2, 3, 4, 5, 6, 7, 8, 9]
  spells:
    type: [schemas.Spell]
    optional: true
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> new Date()

schemas.Spellbook = new SimpleSchema
  userId:
    type: String
  characterId:
    type: String
  spellId:
    type: String
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
  material:
    type: String
    optional: true
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
  prepared:
    type: Boolean
    defaultValue: false
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> new Date()

Spell.attachSchema schemas.Spell
Class.attachSchema schemas.Class
Spellbook.attachSchema schemas.Spellbook
Character.attachSchema schemas.Character
Race.attachSchema schemas.Race

Spell.allow
  insert: (userId, doc) -> (Roles.userIsInRole userId, ['admin'], 'default')

Spellbook.allow
  insert: (userId, doc) ->
    console.log userId
    console.log doc