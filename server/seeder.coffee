###
  {
    name: ""
    level: 1
    school: 'Evocation'
    castingTime: '1 Action'
    range: 0
    duration: 'Instanteneous'
    components: ['Verbal', 'Somatic']
    classes: [
      Class.findOne({name: 'Bard'})._id
      Class.findOne({name: 'Cleric'})._id
      Class.findOne({name: 'Druid'})._id
      Class.findOne({name: 'Paladin'})._id
      Class.findOne({name: 'Ranger'})._id
      Class.findOne({name: 'Sorcerer'})._id
      Class.findOne({name: 'Warlock'})._id
      Class.findOne({name: 'Wizard'})._id
    ]
    version: 5
    book:
      name: 'Player Hand Book'
      page: 263
    descriptions:
      main: ''
      level: ''
  }
###