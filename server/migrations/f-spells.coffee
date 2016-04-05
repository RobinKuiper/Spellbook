Migrations.add
  version: 3
  name: 'Add a-e spells'
  up: ->
    spells = [
      {
        name: "Fabricate"
        level: 4
        school: 'Transmutation'
        castingTime: '10 Minutes'
        range: 120
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 239
        descriptions:
          main: 'You convert raw materials into products of the same material. For example, you can fabricate a wooden bridge from a clump of trees, a rope from a patch of hemp, and clothes from flax or wool. Choose raw materials that you can see within range. You can fabricate a Large or smaller object (contained within a 10-foot cube, or eight connected 5-foot cubes), given a sufficient quantity of raw material. If you are working with metal, stone, or another mineral substance, however, the fabricated object can be no larger than Medium (contained within a single 5-foot cube). The quality of objects made by the spell is commensurate with the quality of the raw materials. Creatures or magic items can’t be created or transmuted by this spell. You also can’t use it to create items that ordinarily require a high degree of craftsmanship, such as jewelry, weapons, glass, or armor, unless you have proficiency with the type of artisan’s tools used to craft such objects.'
      }
      {
        name: "Faerie Fire"
        level: 1
        school: 'Evocation'
        castingTime: '1 Action'
        range: 60
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Druid'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 239
        descriptions:
          main: 'Each object in a 20-foot cube within range is outlined in blue, green, or violet light (your choice). Any creature in the area when the spell is cast is also outlined in light if it fails a Dexterity saving throw. For the duration, objects and affected creatures shed dim light in a 10-foot radius. Any attack roll against an affected creature or object has advantage if the attacker can see it, and the affected creature or object can’t benefit from being invisible.'
      }
      {
        name: "Fear"
        level: 3
        school: 'Illusion'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a white feather or the heart of a hen'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 239
        descriptions:
          main: 'You project a phantasmal image of a creature’s worst fears. Each creature in a 30-foot cone must succeed on a Wisdom saving throw or drop whatever it is holding and become frightened for the duration. While frightened by this spell, a creature must take the Dash action and move away from you by the safest available route on each of its turns, unless there is nowhere to move. If the creature ends its turn in a location where it doesn’t have line of sight to you, the creature can make a Wisdom saving throw. On a successful save, the spell ends for that creature.'
      }
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
          page: 239
        descriptions:
          main: ''
          level: ''
      }
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
          page: 239
        descriptions:
          main: ''
          level: ''
      }
    ]



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
    page: 239
  descriptions:
    main: ''
    level: ''
}