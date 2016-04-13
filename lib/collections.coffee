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
  hitDice:
    type: String
    optional: true
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
  userId:
    type: String
    autoValue: -> @userId
  name:
    type: String
  initiative:
    type: Number
    autoValue: ->
      if @.isInsert
        @.field('abilities.dexterity.modifier').value
  ac:
    type: Number
    label: 'Armor Class'
  level:
    type: Number
    autoValue: ->
      if @.isInsert
        level = 0
        for c in @.field('classes').value
          level += c.level
        return level
  speed:
    type: Number
  exp:
    type: Number
    label: 'Experience Points'
    defaultValue: 0
  health:
    type: Object
    label: 'Hit Points'
  'health.max':
    type: Number
    label: 'Maximum Hit Points'
  'health.current':
    type: Number
    autoValue: ->
      if @.isInsert
        @.field('health.max').value
  'health.temp':
    type: Number
    label: 'Temporary Hit Points'
    defaultValue: 0
  hitDice:
    type: Object
    label: 'Hit Dice'
  'hitDice.total':
    type: [Object]
    #label: 'Total Hit Dice (Format 1D10)'
    #regEx: /([0-9]{1,}d{1}[0-9]{1,})\w+/i
    autoValue: ->
      if @.isInsert
        hitDice = []
        found = null
        classes = @.field('classes').value
        for i in [0...classes.length]
          dice = Class.findOne({ name: classes[i].name }).hitDice
          for j in [0...hitDice.length]
            if hitDice[j].dice == dice
              found = j

          if found != null
            hitDice[found].amount += classes[i].level
            found = null
          else
            hitDice.push({ dice: dice, amount: classes[i].level })
        return hitDice
  'hitDice.total.$.dice':
    type: String
  'hitDice.total.$.amount':
    type: Number
  'hitDice.current':
    type: [Object]
    autoValue: ->
      if @.isInsert
        @.field('hitDice.total').value
  'hitDice.current.$.dice':
    type: String
  'hitDice.current.$.amount':
    type: Number
  currency:
    type: Object
  'currency.copper':
    type: Number
    defaultValue: 0
  'currency.silver':
    type: Number
    defaultValue: 0
  'currency.electrum':
    type: Number
    defaultValue: 0
  'currency.gold':
    type: Number
    defaultValue: 0
  'currency.platinum':
    type: Number
    defaultValue: 0
  classes:
    type: [Object]
  'classes.$.name':
    type: String
    allowedValues: [
      'Barbarian'
      'Bard'
      'Cleric'
      'Druid'
      'Fighter'
      'Monk'
      'Paladin'
      'Ranger'
      'Sorcerer'
      'Rogue'
      'Warlock'
      'Wizard'
    ]
  'classes.$.level':
    type: Number
    allowedValues: [1...21]
  race:
    type: String
    allowedValues: [
      'Dwarf'
      'Elf'
      'Halfling'
      'Human'
      'Dragonborn'
      'Gnome'
      'Half-Elf'
      'Half-Orc'
      'Tiefling'
    ]
  abilities:
    type: Object
    label: 'Ability Scores'
  'abilities.strength':
    type: Object
  'abilities.strength.score':
    type: Number
    allowedValues: [1...21]
  'abilities.strength.modifier':
    type: Number
    autoValue: ->
      if @.isInsert
        score = @.field('abilities.strength.score').value
        return utils.calculate.modifier(score)
  'abilities.strength.save':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.strength.modifier').value
        if @.field('proficiencies.save').value.indexOf('Strength') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.dexterity':
    type: Object
  'abilities.dexterity.score':
    type: Number
    allowedValues: [1...21]
  'abilities.dexterity.modifier':
    type: Number
    autoValue: ->
      if @.isInsert
        score = @.field('abilities.dexterity.score').value
        return utils.calculate.modifier(score)
  'abilities.dexterity.save':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.dexterity.modifier').value
        if @.field('proficiencies.save').value.indexOf('Dexterity') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.constitution':
    type: Object
  'abilities.constitution.score':
    type: Number
    allowedValues: [1...21]
  'abilities.constitution.modifier':
    type: Number
    autoValue: ->
      if @.isInsert
        score = @.field('abilities.constitution.score').value
        return utils.calculate.modifier(score)
  'abilities.constitution.save':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.constitution.modifier').value
        if @.field('proficiencies.save').value.indexOf('Constitution') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.intelligence':
    type: Object
  'abilities.intelligence.score':
    type: Number
    allowedValues: [1...21]
  'abilities.intelligence.modifier':
    type: Number
    autoValue: ->
      if @.isInsert
        score = @.field('abilities.intelligence.score').value
        return utils.calculate.modifier(score)
  'abilities.intelligence.save':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.intelligence.modifier').value
        if @.field('proficiencies.save').value.indexOf('Intelligence') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.wisdom':
    type: Object
  'abilities.wisdom.score':
    type: Number
    allowedValues: [1...21]
  'abilities.wisdom.modifier':
    type: Number
    autoValue: ->
      if @.isInsert
        score = @.field('abilities.wisdom.score').value
        return utils.calculate.modifier(score)
  'abilities.wisdom.save':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.wisdom.modifier').value
        if @.field('proficiencies.save').value.indexOf('Wisdom') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.charisma':
    type: Object
  'abilities.charisma.score':
    type: Number
    allowedValues: [1...21]
  'abilities.charisma.modifier':
    type: Number
    autoValue: ->
      if @.isInsert
        score = @.field('abilities.charisma.score').value
        return utils.calculate.modifier(score)
  'abilities.charisma.save':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.charisma.modifier').value
        if @.field('proficiencies.save').value.indexOf('Charisma') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.athletics':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.strength.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Athletics') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.acrobatics':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.dexterity.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Acrobatis') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.sleightofhand':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.dexterity.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Sleight of Hand') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.stealth':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.dexterity.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Stealth') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.arcana':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.intelligence.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Arcana') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.history':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.intelligence.modifier').value
        if @.field('proficiencies.skills').value.indexOf('History') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.investigation':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.intelligence.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Investigation') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.nature':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.intelligence.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Nature') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.religion':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.intelligence.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Religion') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.animalhandling':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.wisdom.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Animal Handling') != -1
          return mod+@.field('proficiencies.bonus').value
        else
        return mod
  'abilities.insight':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.wisdom.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Insight') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.medicine':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.wisdom.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Medicine') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.perception':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.wisdom.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Perception') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.survival':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.wisdom.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Survival') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.deception':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.charisma.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Deception') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.intimidation':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.charisma.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Intimidation') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.performance':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.charisma.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Performance') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  'abilities.persuasion':
    type: Number
    autoValue: ->
      if @.isInsert
        mod = @.field('abilities.charisma.modifier').value
        if @.field('proficiencies.skills').value.indexOf('Persuasion') != -1
          return mod+@.field('proficiencies.bonus').value
        else
          return mod
  proficiencies:
    type: Object
  'proficiencies.bonus':
    type: Number
    autoValue: ->
      switch @.field('level').value
        when 1, 2, 3, 4 then 2
        when 5, 6, 7, 8 then 3
        when 9, 10, 11, 12 then 4
        when 13, 14, 15, 16 then 5
        when 17, 18, 19, 20 then 6
  'proficiencies.save':
    type: [String]
    allowedValues: [
      'Strength'
      'Dexterity'
      'Constitution'
      'Intelligence'
      'Wisdom'
      'Charisma'
    ]
    label: 'Saving Throws'
  'proficiencies.skills':
    type: [String]
    allowedValues: [
        'Acrobatics'
        'Animal Handling'
        'Arcana'
        'Athletics'
        'Deception'
        'History'
        'Insight'
        'Intimidation'
        'Investigation'
        'Medicine'
        'Nature'
        'Perception'
        'Performance'
        'Persuasion'
        'Religion'
        'Sleight of Hand'
        'Stealth'
        'Survival'
    ]
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

Character.allow
  insert: (userId, doc) -> (doc.userId == userId)
  update: (userId, doc, fields, modifier) -> (doc.userId == userId)

Spellbook.allow
  insert: (userId, doc) ->
    console.log userId
    console.log doc