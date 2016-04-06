Migrations.add
  version: 7
  name: 'Add i, j, k spells'
  up: ->
    spells = [
      {
        name: "Ice Storm"
        level: 4
        school: 'Evocation'
        castingTime: '1 Action'
        range: 300
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a pinch of dust and a few drops of water'
        classes: [
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 252
        descriptions:
          main: 'A hail of rock-hard ice pounds to the ground in a 20-foot-radius, 40-foot-high cylinder centered on a point within range. Each creature in the cylinder must make a Dexterity saving throw. A creature takes 2d8 bludgeoning damage and 4d6 cold damage on a failed save, or half as much damage on a successful one. Hailstones turn the storm’s area of effect into difficult terrain until the end of your next turn.'
          level: 'When you cast this spell using a spell slot of 5th level or higher, the bludgeoning damage increases by 1d8 for each slot level above 4th.'
      }
      {
        name: "Identify (Ritual)"
        level: 1
        school: 'Divination'
        castingTime: '1 Minute'
        range: 5
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a pearl worth at least 100 gp and an owl feather'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 252
        descriptions:
          main: 'You choose one object that you must touch throughout the casting of the spell. If it is a magic item or some other magic-imbued object, you learn its properties and how to use them, whether it requires attunement to use, and how many charges it has, if any. You learn whether any spells are affecting the item and what they are. If the item was created by a spell, you learn which spell created it. If you instead touch a creature throughout the casting, you learn what spells, if any, are currently affecting it.'
      }
      {
        name: "Illusory Script (Ritual)"
        level: 1
        school: 'Illusion'
        castingTime: '1 Minute'
        range: 5
        duration: '10 Days'
        components: ['Material', 'Somatic']
        material: 'a lead-based ink worth at least 10 gp, which the spell consumes'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 252
        descriptions:
          main: 'You write on parchment, paper, or some other suitable writing material and imbue it with a potent illusion that lasts for the duration. To you and any creatures you designate when you cast the spell, the writing appears normal, written in your hand, and conveys whatever meaning you intended when you wrote the text. To all others, the writing appears as if it were written in an unknown or magical script that is unintelligible. Alternatively, you can cause the writing to appear to be an entirely different message, written in a different hand and language, though the language must be one you know. Should the spell be dispelled, the original script and the illusion both disappear. A creature with truesight can read the hidden message.'
      }
      {
        name: "Imprisonment"
        level: 9
        school: 'Abjuration'
        castingTime: '1 Minute'
        range: 30
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a vellum depiction or a carved statuette in the likeness of the target, and a special component that varies according to the version of the spell you choose, worth at least 500 gp per Hit Die of the target '
        classes: [
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 252
        descriptions:
          main: "You create a magical restraint to hold a creature that you can see within range.
The target must succeed on a Wisdom saving throw or be bound by the spell; if it succeeds, it is immune to this spell if you cast it again. While affected by this spell, the creature doesn't need to breathe, eat, or drink, and it doesn’t age. Divination spells can’t locate or perceive the target.
    When you cast the spell, you choose one of the following forms of imprisonment.

        Burial. The target is entombed far beneath the earth in a sphere of magical force that is just large enough to contain the target. Nothing can pass through the sphere, nor can any creature teleport or use planar travel to get into or out of it.

                    The special component for this version of the spell is a small mithral orb.

  Chaining. Heavy chains, firmly rooted in the ground, hold the target in place. The target is restrained until the spell ends, and it can’t move or be moved by any means until then.
The special component for this version of the spell is a fine chain of precious metal.

    Hedged Prison. The spell transports the target into a tiny demiplane that is warded against teleportation and planar travel. The demiplane can be a labyrinth, a cage, a tower, or any similar confined structure or area of your choice.
            The special component for this version of the spell is a miniature representation of the prison made from jade.

    Minimus Containment. The target shrinks to a height of 1 inch and is imprisoned inside a gemstone or similar object. Light can pass through the gemstone normally (allowing the target to see out and other creatures to see in), but nothing else can pass through, even by means of teleportation or planar travel. The gemstone can’t be cut or broken while the spell remains in effect.
    The special component for this version of the spell is a large, transparent gemstone, such as a corundum, diamond, or ruby.

    Slumber. The target falls asleep and can’t be awoken. The special component for this version of the spell consists of rare soporific herbs.

  Ending the Spell.
  During the casting of the spell, in any of its versions, you can specify a condition that will cause the spell to end and release the target. The condition can be as specific or as elaborate as you choose, but the DM must agree that the condition is reasonable and has a likelihood of coming to pass. The conditions can be based on a creature’s name, identity, or deity but otherwise must be based on observable actions or qualities and not based on intangibles such as level, class, or hit points.
  A dispel magic spell can end the spell only if it is cast as a 9th-level spell, targeting either the prison or the special component used to create it.

  You can use a particular special component to create only one prison at a time. If you cast the spell again using the same component, the target of the first casting is immediately freed from its binding."
      }
      {
        name: "Incendiary Cloud"
        level: 8
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 150
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 253
        descriptions:
          main: 'A swirling cloud of smoke shot through with white-hot embers appears in a 20-foot-radius sphere centered on a point within range. The cloud spreads around corners and is heavily obscured. It lasts for the duration or until a wind of moderate or greater speed (at least 10 miles per hour) disperses it. When the cloud appears, each creature in it must make a Dexterity saving throw. A creature takes 10d8 fire damage on a failed save, or half as much damage on a successful one. A creature must also make this saving throw when it enters the spell’s area for the first time on a turn or ends its turn there. The cloud moves 10 feet directly away from you in a direction that you choose at the start of each of your turns.'
      }
      {
        name: "Inflict Wounds"
        level: 1
        school: 'Necromancy'
        castingTime: '1 Action'
        range: 5
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Cleric'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 253
        descriptions:
          main: 'Make a melee spell attack against a creature you can reach. On a hit, the target takes 3d10 necrotic damage.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d10 for each slot level above 1st.'
      }
      {
        name: "Insect Plague"
        level: 5
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 300
        duration: 'Concentration, up to 10 minutes'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a few grains of sugar, some kernels of grain, and a smear of fat'
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
          page: 254
        descriptions:
          main: 'Swarming, biting locusts fill a 20-foot-radius sphere centered on a point you choose within range. The sphere spreads around corners. The sphere remains for the duration, and its area is lightly obscured. The sphere’s area is difficult terrain. When the area appears, each creature in it must make a Constitution saving throw. A creature takes 4d10 piercing damage on a failed save, or half as much damage on a successful one. A creature must also make this saving throw when it enters the spell’s area for the first time on a turn or ends its turn there.'
          level: 'When you cast this spell using a spell slot of 6th level or higher, the damage increases by 1d10 for each slot level above 5th.'
      }
      {
        name: "Invisibility"
        level: 2
        school: 'Illusion'
        castingTime: '1 Action'
        range: 5
        duration: 'Concentration, up to 1 hour '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'an eyelash encased in gum arabic'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 254
        descriptions:
          main: 'A creature you touch becomes invisible until the spell ends. Anything the target is wearing or carrying is invisible as long as it is on the target’s person. The spell ends for a target that attacks or casts a spell.'
          level: 'When you cast this spell using a spell slot of 3rd level or higher, you can target one additional creature for each slot level above 2nd.'
      }
      {
        name: "Jump"
        level: 1
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 5
        duration: '1 Minute'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a grasshopper’s hind leg'
        classes: [
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Ranger'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 254
        descriptions:
          main: 'You touch a creature. The creature’s jump distance is tripled until the spell ends.'
      }
      {
        name: "Knock"
        level: 2
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 60
        duration: 'Instanteneous'
        components: ['Verbal']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 254
        descriptions:
          main: 'Choose an object that you can see within range. The object can be a door, a box, a chest, a set of manacles, a padlock, or another object that contains a mundane or magical means that prevents access. A target that is held shut by a mundane lock or that is stuck or barred becomes unlocked, unstuck, or unbarred. If the object has multiple locks, only one of them is unlocked. If you choose a target that is held shut with arcane lock, that spell is suppressed for 10 minutes, during which time the target can be opened and shut normally. When you cast the spell, a loud knock, audible from as far away as 300 feet, emanates from the target object.'
      }
    ]

    spells.forEach (spell) ->
      spell.createdAt = new Date()
      Spell.insert spell