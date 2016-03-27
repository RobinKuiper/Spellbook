Class.remove {}

classes = [
  {
    name: 'Barbarian'
  }
  {
    name: 'Bard'
  }
  {
    name: 'Cleric'
  }
  {
    name: 'Druid'
  }
  {
    name: 'Fighter'
  }
  {
    name: 'Monk'
  }
  {
    name: 'Paladin'
  }
  {
    name: 'Ranger'
  }
  {
    name: 'Sorcerer'
  }
  {
    name: 'Rogue'
  }
  {
    name: 'Warlock'
  }
  {
    name: 'Wizard'
  }
]

classes.forEach (c) ->
  c.createdAt = new Date()
  Class.upsert { name: c.name }, { $set: c }

Spell.remove {}

spells = [
  {
    name: "Abi-Dalzim's Horrid Wilting"
    version: 5
    book:
      name: 'Elemental Evil'
      page: 15
    classes: [
      Class.findOne({ name: 'Sorcerer' })._id
      Class.findOne({ name: 'Wizard' })._id
    ]
    level: 8
    range: 150
    duration: 'Instanteneous'
    castingTime: '1 Action'
    components: ['Verbal', 'Somatic', 'Material (a bit of sponge)']
    descriptions:
      main: ' Blaat '
      level: 'Kut'
    school: 'Necromancy'
  }
  {
    name: "Absorb Elements"
    version: 5
    book:
      name: 'Elemental Evil'
      page: 15
    classes: [
      Class.findOne({ name: 'Druid' })._id
      Class.findOne({ name: 'Ranger' })._id
      Class.findOne({ name: 'Wizard' })._id
    ]
    level: 1
    range: 0
    duration: '1 Round'
    castingTime: '1 Reaction, which you take when you take acid, cold, fire, lightning, or thunder damage'
    components: ['Somatic']
    descriptions:
      main: ' Blaat '
      level: 'Kut'
    school: 'Abjuration'
  }
  {
    name: "Acid Splash"
    version: 5
    book:
      name: 'Player Hand Book'
      page: 211
    classes: [
      Class.findOne({ name: 'Sorcerer' })._id
      Class.findOne({ name: 'Wizard' })._id
    ]
    level: 0
    range: 60
    duration: 'Instanteneous'
    castingTime: '1 Action'
    components: ['Verbal', 'Somatic']
    descriptions:
      main: ' Blaat '
      level: 'Kut'
    school: 'Conjuration'
  }
  {
    name: "Aganazzar's Scorcher"
    version: 5
    book:
      name: 'Elemental Evil'
      page: 15
    classes: [
      Class.findOne({ name: 'Sorcerer' })._id
      Class.findOne({ name: 'Wizard' })._id
    ]
    level: 2
    range: 30
    duration: 'Instanteneous'
    castingTime: '1 Action'
    components: ['Verbal', 'Somatic', "Material (a red dragon's scale)"]
    descriptions:
      main: ' Blaat '
      level: 'Kut'
    school: 'Evocation'
  }
]

spells.forEach (spell) ->
  spell.createdAt = new Date()
  Spell.upsert { name: spell.name }, { $set: spell }