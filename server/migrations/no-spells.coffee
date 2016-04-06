Migrations.add
  version: 9
  name: 'Add n, o spells'
  up: ->
    spells = [
      {
        name: "Nondetection"
        level: 3
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 5
        duration: '8 Hours'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a pinch of diamond dust worth 25 gp sprinkled over the target, which the spell consumes'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Ranger'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 263
        descriptions:
          main: 'For the duration, you hide a target that you touch from divination magic. The target can be a willing creature or a place or an object no larger than 10 feet in any dimension. The target can’t be targeted by any divination magic or perceived through magical scrying sensors.'
      }
      {
        name: "Nystul’s Magic Aura"
        level: 2
        school: 'Illusion'
        castingTime: '1 Action'
        range: 5
        duration: '24 Hours'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a small square of silk'
        classes: [
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 263
        descriptions:
          main: 'You place an illusion on a creature or an object you touch so that divination spells reveal false information about it. The target can be a willing creature or an object that isn’t being carried or worn by another creature. When you cast the spell, choose one or both of the following effects. The effect lasts for the duration. If you cast this spell on the same creature or object every day for 30 days, placing the same effect on it each time, the illusion lasts until it is dispelled. False Aura. You change the way the target appears to spells and magical effects, such as detect magic, that detect magical auras. You can make a nonmagical object appear magical, a magical object appear nonmagical, or change the object’s magical aura so that it appears to belong to a specific school of magic that you choose. When you use this effect on an object, you can make the false magic apparent to any creature that handles the item. Mask. You change the way the target appears to spells and magical effects that detect creature types, such as a paladin’s Divine Sense or the trigger of a sym bol spell. You choose a creature type and other spells and magical effects treat the target as if it were a creature of that type or of that alignment.'
      }
      {
        name: "Otiluke’s Freezing Sphere"
        level: 6
        school: 'Evocation'
        castingTime: '1 Action'
        range: 300
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a small crystal sphere'
        classes: [
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 263
        descriptions:
          main: 'A frigid globe of cold energy streaks from your fingertips to a point of your choice within range, where it explodes in a 60-foot-radius sphere. Each creature within the area must make a Constitution saving throw. On a failed save, a creature takes 10d6 cold damage. On asuccessful save, it takes half as much damage. If the globe strikes a body of water or a liquid that is principally water (not including water-based creatures), it freezes the liquid to a depth of 6 inches over an area 30 feet square. This ice lasts for 1 minute. Creatures that were swimming on the surface of frozen water are trapped in the ice. A trapped creature can use an action to make a Strength check against your spell save DC to break free. You can refrain from firing the globe after completing the spell, if you wish. A small globe about the size of a sling stone, cool to the touch, appears in your hand. At any time, you or a creature you give the globe to can throw the globe (to a range of 40 feet) or hurl it with a sling (to the sling’s normal range). It shatters on impact, with the same effect as the normal casting of the spell. You can also set the globe down without shattering it. After 1 minute, if the globe hasn’t already shattered, it explodes.'
          level: 'When you cast this spell using a spell slot of 7th level or higher, the damage increases by 1d6 for each slot level above 6th'
      }
      {
        name: "Otiluke’s Resilient Sphere"
        level: 4
        school: 'Evocation'
        castingTime: '1 Action'
        range: 30
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a hemispherical piece of clear crystal and a matching hemispherical piece of gum arabic'
        classes: [
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 264
        descriptions:
          main: 'A sphere of shimmering force encloses a creature or object o f Large size or smaller within range. An unwilling creature must make a Dexterity saving throw. On a failed save, the creature is enclosed for the duration. Nothing?not physical objects, energy, or other spell effects?can pass through the barrier, in or out, though a creature in the sphere can breathe there. The sphere is immune to all damage, and a creature or object inside can’t be damaged by attacks or effects originating from outside, nor can a creature inside the sphere damage anything outside it. The sphere is weightless and just large enough to contain the creature or object inside. An enclosed creature can use its action to push against the sphere’s walls and thus roll the sphere at up to half the creature’s speed. Similarly, the globe can be picked up and moved by other creatures. A disintegrate spell targeting the globe destroys it without harming anything inside it.'
      }
      {
        name: "Otto’s Irresistible Dance"
        level: 6
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 30
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 264
        descriptions:
          main: 'Choose one creature that you can see within range. The target begins a comic dance in place: shuffling, tapping its feet, and capering for the duration. Creatures that can’t be charmed are immune to this spell. A dancing creature must use all its movement to dance without leaving its space and has disadvantage on Dexterity saving throws and attack rolls. While the target is affected by this spell, other creatures have advantage on attack rolls against it. As an action, a dancing creature makes a Wisdom saving throw to regain control o f itself. On a successful save, the spell ends.'
      }
    ]

    spells.forEach (spell) ->
      spell.createdAt = new Date()
      Spell.insert spell