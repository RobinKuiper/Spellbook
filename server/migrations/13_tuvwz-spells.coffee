Migrations.add
  version: 13
  name: 'Add t, u, v, w, z spells'
  up: ->
    spells = [
      {
        name: "Tasha’s Hideous Laughter"
        level: 1
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 30
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'tiny tarts and a feather that is waved in the air'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 280
        descriptions:
          main: 'A creature of your choice that you can see within range perceives everything as hilariously funny and falls into fits of laughter if this spell affects it. The target must succeed on a Wisdom saving throw or fall prone, becoming incapacitated and unable to stand up for the duration. A creature with an Intelligence score of 4 or less isn’t affected.
At the end of each of its turns, and each time it takes damage, the target can make another Wisdom saving throw. The target has advantage on the saving throw ifit’s triggered by damage. On a success, the spell ends.'
      }
      {
        name: "Telekinesis"
        level: 5
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 60
        duration: 'Concentration, up to 10 minutes'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 280
        descriptions:
          main: 'You gain the ability to move or manipulate creatures or objects by thought. When you cast the spell, and as your action each round for the duration, you can exert your will on one creature or object that you can see within range, causing the appropriate effect below. You can affect the same target round after round, or choose a new one at any time. If you switch targets, the prior target is no longer affected by the spell. Creature. You can try to move a Huge or smaller creature. Make an ability check with your spellcasting ability contested by the creature’s Strength check. If you win the contest, you move the creature up to 30 feet in any direction, including upward but not beyond the range of this spell. Until the end of your next turn, the creature is restrained in your telekinetic grip. A creature lifted upward is suspended in mid-air. On subsequent rounds, you can use your action to attempt to maintain your telekinetic grip on the creature by repeating the contest. Object. You can try to move an object that weighs up to 1,000 pounds. If the object isn’t being worn or carried, you automatically move it up to 30 feet in any direction, but not beyond the range of this spell. If the object is worn or carried by a creature, you must make an ability check with your spellcasting ability contested by that creature’s Strength check. If you succeed, you pull the object away from that creature and can move it up to 30 feet in any direction but not beyond the range of this spell. You can exert fine control on objects with your telekinetic grip, such as manipulating a simple tool, opening a door or a container, stowing or retrieving an item from an open container, or pouring the contents from a vial.'
      }
      {
        name: "Telepathy"
        level: 8
        school: 'Evocation'
        castingTime: '1 Action'
        range: -1000
        duration: '24 Hours'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a pair of linked silver rings'
        classes: [
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 281
        descriptions:
          main: 'You create a telepathic link between yourself and a willing creature with which you are familiar. The creature can be anywhere on the same plane of existence as you. The spell ends if you or the target are no longer on the same plane. Until the spell ends, you and the target can instantaneously share words, images, sounds, and other sensory messages with one another through the link, and the target recognizes you as the creature it is communicating with. The spell enables a creature with an Intelligence score of at least 1 to understand the meaning of your words and take in the scope of any sensory messages you send to it.'
      }
      {
        name: "Teleport"
        level: 7
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 10
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
          page: 281
        descriptions:
          main: 'This spell instantly transports you and up to eight willing creatures of your choice that you can see within range, or a single object that you can see within range, to a destination you select. If you target an object, it must be able to fit entirely inside a 10-foot cube, and it can’t be held or carried by an unwilling creature. The destination you choose must be known to you, and it must be on the same plane of existence as you. Your familiarity with the destination determines whether you arrive there successfully. The DM rolls d100 and consults the table.'
      }
      {
        name: "Teleportation Circle"
        level: 5
        school: 'Conjuration'
        castingTime: '1 Minute'
        range: 10
        duration: '1 Round'
        components: ['Verbal', 'Material']
        material: 'rare chalks and inks infused with precious gems with 50 gp, which the spell consumes'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 281
        descriptions:
          main: 'As you cast the spell, you draw a 10-foot-diameter circle on the ground inscribed with sigils that link your location to a permanent teleportation circle of your choice whose sigil sequence you know and that is on the same plane of existence as you. A shimmering portal opens within the circle you drew and remains open until the end of your next turn. Any creature that enters the portal instantly appears within 5 feet of the destination circle or in the nearest unoccupied space if that space is occupied. Many major temples, guilds, and other important places have permanent teleportation circles inscribed somewhere within their confines. Each such circle includes a unique sigil sequence – a string of magical runes arranged in a particular pattern. When you first gain the ability to cast this spell, you learn the sigil sequences for two destinations on the Material Plane, determined by the DM. You can learn additional sigil sequences during your adventures. You can commit a new sigil sequence to memory after studying it for 1 minute. You can create a permanent teleportation circle by casting this spell in the same location every day for one year. You need not use the circle to teleport when you cast the spell in this way.'
      }
      {
        name: "Tenser’s Floating Disk (Ritual)"
        level: 1
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 30
        duration: '1 Hour'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a drop of mercury'
        classes: [
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 282
        descriptions:
          main: 'This spell creates a circular, horizontal plane of force, 3 feet in diameter and 1 inch thick, that floats 3 feet above the ground in an unoccupied space of your choice that you can see within range. The disk remains for the duration, and can hold up to 500 pounds. If more weight is placed on it, the spell ends, and everything on the disk falls to the ground. The disk is immobile while you are within 20 feet of it. If you move more than 20 feet away from it, the disk follows you so that it remains within 20 feet of you. It can more across uneven terrain, up or down stairs, slopes and the like, but it can’t cross an elevation change of 10 feet or more. For example, the disk can’t move across a 10-foot-deep pit, nor could it leave such a pit if it was created at the bottom. If you move more than 100 feet from the disk (typically because it can’t move around an obstacle to follow you), the spell ends.'
      }
      {
        name: "Thaumaturgy"
        level: 0
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 30
        duration: 'Up to 1 minute'
        components: ['Verbal']
        classes: [
          Class.findOne({name: 'Cleric'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 282
        descriptions:
          main: 'You manifest a minor wonder, a sign of supernatural power, within range. You create one of the following magical effects within range: * Your voice booms up to three times as loud as normal for 1 minute. * You cause flames to flicker, brighten, dim, or change color for 1 minute. * You cause harmless tremors in the ground for 1 minute. * You create an instantaneous sound that originates from a point of your choice within range, such as a rumble of thunder, the cry of a raven, or ominous whispers. * You instantaneously cause an unlocked door or window to fly open or slam shut. * You alter the appearance of your eyes for 1 minute. If you cast this spell multiple times, you can have up to three of its 1-minute effects active at a time, and you can dismiss such an effect as an action.'
      }
      {
        name: "Thorn Whip"
        level: 0
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 30
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'the stem of a plant with thorns'
        classes: [
          Class.findOne({name: 'Druid'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 282
        descriptions:
          main: 'You create a long, vine-like whip covered in thorns that lashes out at your command toward a creature in range. Make a melee spell attack against the target. If the attack hits, the creature takes 1d6 piercing damage, and if the creature is Large or smaller, you pull the creature up to 10 feet closer to you.'
          level: 'This spell’s damage increases by 1d6 when you reach 5th level (2d6), 11th level (3d6), and 17th level (4d6).'
      }
      {
        name: "Thunderous Smite"
        level: 1
        school: 'Evocation'
        castingTime: '1 Bonus Action'
        range: 0
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal']
        classes: [
          Class.findOne({name: 'Paladin'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 282
        descriptions:
          main: 'The first time you hit with a melee weapon attack during this spell’s duration, your weapon rings with thunder that is audible within 300 feet of you, and the attack deals an extra 2d6 thunder damage to the target. Additionally, if the target is a creature, it must succeed on a Strength saving throw or be pushed 10 feet away from you and knocked prone.'
      }
      {
        name: "Thunderwave"
        level: 1
        school: 'Evocation'
        castingTime: '1 Action'
        range: 0
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 282
        descriptions:
          main: 'A wave of thunderous force sweeps out from you. Each creature in a 15-foot cube originating from you must make a Constitution saving throw. On a failed save, a creature takes 2d8 thunder damage and is pushed 10 feet away from you. On a successful save, the creature takes half as much damage and isn’t pushed. In addition, unsecured objects that are completely within the area of effect are automatically pushed 10 feet away from you by the spell’s effect, and the spell emits a thunderous boom audible out to 300 feet.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d8 for each slot level above 1st.'
      }
      {
        name: "Time Stop"
        level: 9
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 0
        duration: 'Instanteneous'
        components: ['Verbal']
        classes: [
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 283
        descriptions:
          main: 'You briefly stop the flow of time for everyone but yourself. No time passes for other creatures, while you take 1d4 + 1 turns in a row, during which you can use actions and move as normal. This spell ends if one of the actions you use during this period, or any effects that you create during this period, affects a creature other than you or an object being worn or carried by someone other than you. In addition, the spell ends if you move to a place more than 1,000 feet from the location where you cast it.'
      }
      {
        name: "Tongues"
        level: 3
        school: 'Divination'
        castingTime: '1 Action'
        range: 5
        duration: '1 Hour'
        components: ['Verbal', 'Material']
        material: 'a small clay model of a ziggurat'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 283
        descriptions:
          main: 'This spell grants the creature you touch the ability to understand any spoken language it hears. Moreover, when the target speaks, any creature that knows at least one language and can hear the target understands what it says.'
      }
      {
        name: "Transport via Plants"
        level: 6
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 10
        duration: '1 Round'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Druid'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 283
        descriptions:
          main: 'This spell creates a magical link between a Large or larger inanimate plant within range and another plant, at any distance, on the same plane of existence. You must have seen or touched the destination plant at least once before. For the duration, any creature can step into the target plant and exit from the destination plant by using 5 feet of movement.'
      }
      {
        name: "Tree Stride"
        level: 5
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Ranger'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 283
        descriptions:
          main: 'You gain the ability to enter a tree and move from inside it to inside another tree of the same kind within 500 feet. Both trees must be living and at least the same size as you. You must use 5 feet of movement to enter a tree. You instantly know the location of all other trees of the same kind within 500 feet and, as part of the move used to enter the tree, can either pass into one of those trees or step out of the tree you’re in. You appear in a spot of your choice within 5 feet of the destination tree, using another 5 feet of movement. If you have no movement left, you appear within 5 feet of the tree you entered. You can use this transportation ability once per round for the duration. You must end each turn outside a tree.'
      }
      {
        name: "True Polymorph"
        level: 9
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 30
        duration: 'Concentration, up to 1 hour '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a drop of mercury, a dollop of gum arabic, and a wisp of smoke'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 283
        descriptions:
          main: 'Choose one creature or nonmagical object that you can see within range. You transform the creature into a different creature, the creature into an object, or the object into a creature (the object must be neither worn nor carried by another creature). The transformation lasts for the duration, or until the target drops to 0 hit points or dies. If you concentrate on this spell for the full duration, the transformation becomes permanent. Shapechangers aren’t affected by this spell. An unwilling creature can make a Wisdom saving throw, and if it succeeds, it isn’t affected by this spell. Creature into Creature. If you turn a creature into another kind of creature, the new form can be any kind you choose whose challenge rating is equal to or less than the target’s (or its level, if the target doesn’t have a challenge rating). The target’s game statistics, including mental ability scores, are replaced by the statistics of the new form. It retains its alignment and personality. The target assumes the hit points of its new form, and when it reverts to its normal form, the creature returns to the number of hit points it had before it transformed. If it reverts as a result of dropping to 0 hit points, any excess damage carries over to its normal form. As long as the excess damage doesn’t reduce the creature’s normal form to 0 hit points, it isn’t knocked unconscious. The creature is limited in the actions it can perform by the nature of its new form, and it can’t speak, cast spells, or take any other action that requires hands or speech unless its new form is capable of such actions. The target’s gear melds into the new form. The creature can’t activate, use, wield, or otherwise benefit from any of its equipment. Object into Creature. You can turn an object into any kind of creature, as long as the creature’s size is no larger than the object’s size and the creature’s challenge rating is 9 or lower. The creature is friendly to you and your companions. It acts on each of your turns. You decide what action it takes and how it moves. The DM has the creature’s statistics and resolves all of its actions and movement. If the spell becomes permanent, you no longer control the creature. It might remain friendly to you, depending on how you have treated it. Creature into Object. If you turn a creature into an object, it transforms along with whatever it is wearing and carrying into that form. The creature’s statistics become those of the object, and the creature has no memory of time spent in this form, after the spell ends and it returns to its normal form. This spell have no affect on a target that has 0 hit points.'
      }
      {
        name: "True Resurrection"
        level: 9
        school: 'Necromancy'
        castingTime: '1 Hour'
        range: 5
        duration: 'Instantaneous '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a sprinkle of holy water and diamonds worth at least 25,000 gp, which the spell consumes'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Druid' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 284
        descriptions:
          main: 'You touch a creature that has been dead for no longer than 200 years and that died for any reason except old age. If the creature’s soul is free and willing, the creature is restored to life with all its hit points. This spell closes all wounds, neutralizes any poison, cures all diseases, and lifts any curses affecting the creature when it died. The spell replaces damaged or missing organs or limbs. The spell can even provide a new body if the original no longer exists, in which case you must speak the creature’s name. The creature then appears in an unoccupied space you choose within 10 feet of you.'
      }
      {
        name: "True Seeing"
        level: 8
        school: 'Divination'
        castingTime: '1 Action'
        range: 5
        duration: '1 hour'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'an ointment for the eyes that costs 25 gp, is made from mushroom powder, saffron, and fat, and is consumed by the spell'
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 284
        descriptions:
          main: 'This spell gives the willing creature you touch the ability to see things as they actually are. For the duration, the creature has truesight, notices secret doors hidden by magic, and can see into the Ethereal Plane, all out to a range of 120 feet.'
      }
      {
        name: "True Strike"
        level: 0
        school: 'Divination'
        castingTime: '1 Action'
        range: 30
        duration: 'Concentration, up to 1 round'
        components: ['Somatic']
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 284
        descriptions:
          main: 'You extend your hand and point a finger at a target in range. Your magic grants you a brief insight into the target’s defenses. On your next turn, you gain advantage on your first attack roll against the target, provided that this spell hasn’t ended.'
      }
      {
        name: "Tsunami"
        level: 8
        school: 'Conjuration'
        castingTime: '1 Minute'
        range: -1
        duration: 'Concentration, up to 6 rounds'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Druid' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 284
        descriptions:
          main: 'A wall of water springs into existence at a point you choose within range. You can make the wall up to 300 feet long, 300 feet high, and 50 feet thick. The wall lasts for the duration. When the wall appears, each creature within its area must make a Strength saving throw. On a failed save, a creature takes 6d10 bludgeoning damage, or half as much damage on a successful save. At the start of each of your turns after the wall appears, the wall, along with any creatures in it, moves 50 feet away from you. Any Huge or smaller creature inside the wall or whose space the wall enters when it moves must succeed on a Strength saving throw or take 5d10 bludgeoning damage. A creature can take this damageonly once per round. At the end of the turn, the wall’s height is reduced by 50 feet, and the damage creatures take from the spell on subsequent rounds is reduced by 1d10. When the wall reaches 0 feet in height, the spell ends. A creature caught in the wall can move by sqimming. Because of the force of the wave, though, the creature must make a successful Strength (Athletics) check against your spell save DC in order to move at all. If it fails the check, it can’t move. A creature that moves out of the area falls to the ground.'
      }
      {
        name: "Unseen Servant (Ritual)"
        level: 1
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 60
        duration: '1 hour'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a piece of string and a bit of wood'
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 284
        descriptions:
          main: 'This spell creates an invisible, mindless, shapeless force that performs simple tasks at your command until the spell ends. The servant springs into existence in an unoccupied space on the ground within range. It has AC 10, 1 hit point, and a Strength of 2, and it can’t attack. If it drops to 0 hit points, the spell ends. Once on each of your turns as a bonus action, you can mentally command the servant to move up to 15 feet and inteact with an object. The servant can perform simple tasks that a human servant could do, such as fetching things, cleaning, mending, folding clothes, lighting fires, serving food, and pouring wine. Once yougive the command, the servant performs the task to the best of its ability until it completes the task, then waits for your next command. If you command the servant to perform a task that would move it more than 60 feet away from you, the spell ends.'
      }
      {
        name: "Vampiric Touch"
        level: 3
        school: 'Necromancy'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 285
        descriptions:
          main: 'The touch of your shadow-wreathed hand can siphon force from others to heal your wounds. Make a melee spell attack against a creature within your reach. On a hit, the target takes 3d6 necrotic damage, and you regain hit points equal to half the amount of necrotic damage dealt. Until the spell ends, you can make the attack again on each of your turns as an action'
          level: 'When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d6 for each slot level above 3rd.'
      }
      {
        name: "Wall of Fire"
        level: 4
        school: 'Evocation'
        castingTime: '1 Action'
        range: 120
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a small piece of phosphorus'
        classes: [
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 285
        descriptions:
          main: 'You create a wall of fire on a solid surface within range. You can make the wall up to 60 feet long, 20 feet high, and 1 foot think, or a ringed wall up to 20 feet in diameter, 20 feet high, and 1 foot think. The wall is opaque and lasts for the duration. When the wall appears, each creature within its area must make a Dexterity saving throw. On a failed save, a creature takes 5d8 fire damage, or half as much damage on a successful save. One side of the wall, selected by you when you cast this spell, deals 5d8 fire damage to each creature that ends its turn within 10 feet of that side or inside the wall. A creature takes the same damage when it enters the wall fo rhte first time on a turn or ends its turn there. The other side of the wall deals no damage'
          level: ' When you cast this spell using a spell slot of 5th level or higher, the damage increases by 1d8 for each slot level above 4th.'
      }
      {
        name: "Wall of Force"
        level: 5
        school: 'Evocation'
        castingTime: '1 Action'
        range: 120
        duration: 'Concentration, up to 10 minutes'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a pinch of powder made by crushing a clear gemstone'
        classes: [
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 285
        descriptions:
          main: 'An invisible wall of force springs into existence at a point you choose within range. The wall appears in any orientation you choose, as a horizontal or vertical barrier or at an angle. It can be free floating or resting on a solid surface. You can form it into a hemispherical dome or a sphere with a radius of up to 10 feet, or you can shape a flat surface made up of ten 10-foot-by-10-foot panels. Each panel must be continguous with another panel. In any form, the wall is 1/4 inch thick. It lasts for the duration. If the wall cuts through a creature’s space when it appears, the creature is pushed to one side of the wall (your choice which side). Nothing can physically pass through the wall. It is immune to all damage and can’t be dispelled by dispel magic. A disintegrate spell destroys the wall instantly, however. The wall also extends into the Ethereal Plane, blocking ethereal travel through the wall.'
      }
      {
        name: "Wall of Ice"
        level: 6
        school: 'Evocation'
        castingTime: '1 Action'
        range: 120
        duration: 'Concentration, up to 10 minutes'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a small piece of quartz'
        classes: [
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 285
        descriptions:
          main: 'You create a wall of ice on a solid surface within range. You can form it into a hemispherical dome or a sphere with radium of up to 10 feet, or you can shape a flat surfcae made up of ten 10-foot-square panels. Each panel must be contiguous with another panel. In any form, the wall is 1 foot thick and lasts for the duration. If the wall cuts through a creature’s space when it appears, the creature within its area is pushed to one side of the wall and must make a Dexterity saving throw. On a failed save, the creature takes 10d6 cold damage, or half as much damage on a successful save. The wall is an object that can be damaged and thus breached. It has AC 12 and 30 hit points per 10-foot section, and it is vulnerable to fire damage. Reducing a 10-foot section of wall to 0 hit points destroys it and leaves behind a sheet of frigid air int he space the wall occupied. A creature moving through the sheet of frigid air for the first time on a turn must make a Constitution saaving throw. The creature takes 5f6 cold damage on a failed save, or half as much damage on a successful one'
          level: 'When you cast this spell using a spell slot of 7th level or higher, the damage the wall deals when it appears increases by 2d6, and the damage from passing through the sheet of frigid air inreases by 1d6 for each slot level above 6th.'
      }
      {
        name: "Wall of Stone"
        level: 5
        school: 'Evocation'
        castingTime: '1 Action'
        range: 60
        duration: 'Concentration, up to 10 minutes'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a small block of granite'
        classes: [
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 287
        descriptions:
          main: 'A nonmagical wall of solid stone springs into existence at a point you choose within range. The wall is 6 inches thick and is composed of ten 10-foot-by-10-foot panels. Each panel must be contiguous with at least on other panel. Alternatively, you can create 10-foot-by-20-foot panels that are only 3 inches thick. If the wall cuts through a creature’s space when it appears, the creature is pushed to one side of the wall (your choice). If a creature would be surrounded on all sides by the wall (or the wall and another solid surface), that creature can make a Dexterity saving throw. On a success, it can use its reaction to move up to its speed so that it is no longer enclosed by the wall. The wall can have any shape you desire, though it can’t occupy the same space as a creature or object. the wall doesn’t need to be vertical or resting on any firm foundation. It must, however, merge with and be solidly supported by existing stone. Thus you can use this spell to bridge a chasm or create a ramp. If you create a span greater than 20 feet in length, you must halve the size of each panel to create supports. You can crudely shape the wall to create crenellations, battlements, and so on. The wall is an object made of stone that can be damaged and thus breached. Each panel has AC 15 and 30 hit points per inch of thickness. Reducing a panel to 0 hit points destroys it and might cause connected panels to collapse at the DM’s discretion. If you maintain your concentration on this spell for its whole duration, the wall becomes permanent and can’t be dispelled. Otherwise, the wall disappears when the spell ends.'
      }
      {
        name: "Wall of Thorns"
        level: 6
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 120
        duration: 'Concentration, up to 10 minutes'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a handful of thorns'
        classes: [
          Class.findOne({ name: 'Druid' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 287
        descriptions:
          main: 'You create a wall of tough, pliable, tangled brush bristling with needle-sharp thorns. The wall appears within range on a solid surface and lasts for the duration. You choose to make the wall up to 60 feet long, 10 feet high, and 5 feet thick or a circle that has a 20-foot diameter and is up to 20 feet high and 5 feet thick. The wall blocks line of sight. When the wall appears, each creature within its area must make a Dexterity saving throw. On a failed save, a creature takes 7d8 piercing damage, or half as much damage on a successful save. A creature can move through the wall, albeit slowly and painfully. For every 1 foot a creature moves through the wall, it must spend 4 feet of movement. Furthermore, the first time a creature enters the wall on a turn or ends its turn there, the creature must make a Dexterity saving throw. It takes 7d8 slashing damage on a failed save, or half as much on a successful save'
          level: 'When you cast this spell using a spell slot of 7th level or higher, both types of damage increase by 1d8 for each slot level above 6th.'
      }
      {
        name: "Warding Bond"
        level: 2
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 5
        duration: '1 hour'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a pair of platinum rings worth at least 50 gp each, which you and target must wear for the duration'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 287
        descriptions:
          main: 'This spell wards a willing creature you touch and creates a mystic connection between you and the target until the spell ends.

While the target is within 60 feet of you, it gains a +1 bonus to AC and saving throws, and it has resistance to all damage. Also, each time it takes damage, you take the same amount of damage.

The spell ends if you drop to 0 hit points or if you and the target become separated by more than 60 feet. It also ends if the spell is cast again on either of the connected creatures. You can also dismiss the spell as an action.'
      }
      {
        name: "Water Breathing (Ritual)"
        level: 3
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 30
        duration: '24 hours '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a short reed or piece of straw'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Ranger' })._id
          Class.findOne({ name: 'Sorcerer' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 287
        descriptions:
          main: 'This spell grants up to ten willing creatures you can see within range the ability to breathe underwater until the spell ends. Affected creatures also retain their normal mode of respiration.'
      }
      {
        name: "Water Walk (Ritual)"
        level: 3
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 30
        duration: '1 hour'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a piece of cork'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Ranger' })._id
          Class.findOne({ name: 'Sorcerer' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 287
        descriptions:
          main: 'This spell grants the ability to move across any liquid surface – such as water, acid, mud, snow, quicksand, or lava – as if it were harmless solid ground (creatures crossing molten lava can still take damage from the heat).
Up to ten willing creatures you can see within range gain this ability for the duration. If you target a creature submerged in a liquid, the spell carries the target to the surface of the liquid at a rate of 60 feet per round.'
      }
      {
        name: "Web"
        level: 2
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 60
        duration: 'Concentration, up to 1 hour'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a bit of spiderweb'
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 287
        descriptions:
          main: 'You conjure a mass of thick, sticky webbing at a point of your choice within range.
The webs fill a 20-foot cube from that point for the duration. The webs are difficult terrain and lightly obscure their area.
If the webs aren’t anchored between two solid masses (such as walls or trees) or layered across a floor, wall, or ceiling, the conjured web collapses on itself, and the spell ends at the start of your next turn. Webs layered over a flat surface have a depth of 5 feet.
Each creature that starts its turn in the webs or that enters them during its turn must make a Dexterity saving throw. On a failed save, the creature is restrained as long as it remains in the webs or until it breaks free.
A creature restrained by the webs can use its actions to make a Strength check against your spell save DC. If it succeeds, it is no longer restrained.
The webs are flammable. Any 5-foot cube of webs exposed to fire burns away in 1 round, dealing 2d4 fire damage to any creature that starts its turn in the fire.'
      }
      {
        name: "Weird"
        level: 9
        school: 'Illusion'
        castingTime: '1 Action'
        range: 120
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 288
        descriptions:
          main: 'Drawing on the deepest fears of a group of creatures, you create illusory creatures in their minds, visible only to them.
Each creature in a 30-foot-radius sphere centered on a point of your choice within range must make a Wisdom saving throw. On a failed save, a creature becomes frightened for the duration.
The illusion calls on the creature’s deepest fears, manifesting its worst nightmares as an implacable threat. At the end of each of the frightened creature’s turns, it must succeed on a Wisdom saving throw or take 4d10 psychic damage. On a successful save, the spell ends for that creature.'
      }
      {
        name: "Wind Walk"
        level: 6
        school: 'Transmutation'
        castingTime: '1 Minute'
        range: 30
        duration: '8 hours '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'fire and holy water'
        classes: [
          Class.findOne({ name: 'Druid' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 288
        descriptions:
          main: 'You and up to ten willing creatures you can see within range assume a gaseous form for the duration, appearing as wisps of cloud.
While in this cloud form, a creature has a flying speed of 300 feet and has resistance to damage from nonmagical weapons. The only actions a creature can take in this form are the Dash action or to revert to its normal form.
Reverting takes 1 minute, during which time a creature is incapacitated and can’t move. Until the spell ends, a creature can revert to cloud form, which also requires the 1-minute transformation.
If a creature is in cloud form and flying when the effect ends, the creature descends 60 feet per round for 1 minute until it lands, which it does safely. If it can’t land after 1 minute, the creature falls the remaining distance.'
      }
      {
        name: "Wind Wall"
        level: 3
        school: 'Evocation'
        castingTime: '1 Action'
        range: 120
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a tiny fan and a feather of exotic origin'
        classes: [
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Ranger' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 288
        descriptions:
          main: 'A wall of strong wind rises from the ground at a point you choose within range.
You can make the wall up to 50 feet long, 15 feet high, and 1 foot thick. You can shape the wall in any way you choose so long as it makes one continuous path along the ground. The wall lasts for the duration.
When the wall appears, each creature within its area must make a Strength saving throw. A creature takes 3d8 bludgeoning damage on a failed save, or half as much damage on a successful one.
The strong wind keeps fog, smoke, and other gases at bay. Small or smaller flying creatures or objects can’t pass through the wall. Loose, lightweight materials brought into the wall fly upward. Arrows, bolts, and other ordinary projectiles launched at targets behind the wall are deflected upward and automatically miss. (Boulders hurled by giants or siege engines, and similar projectiles, are unaffected.) Creatures in gaseous form can’t pass through it.'
      }
      {
        name: "Wish"
        level: 9
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 0
        duration: 'Instantaneous'
        components: ['Verbal']
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 288
        descriptions:
          main: 'Wish is the mightiest spell a mortal creature can cast. By simply speaking aloud, you can alter the very foundations of reality in accord with your desires.
The basic use of this spell is to duplicate any other spell of 8th level or lower. You don’t need to meet any requirements in that spell, including costly components. The spell simply takes effect.
Alternatively, you can create one of the following effects of your choice:
• You create one object of up to 25,000 gp in value that isn’t a magic item. The object can be no more than 300 feet in any dimension, and it appears in an unoccupied space you can see on the ground.
• You allow up to twenty creatures that you can see to regain all hit points, and you end all effects on them described in the greater restoration spell.
• You grant up to ten creatures that you can see resistance to a damage type you choose.
• You grant up to ten creatures you can see immunity to a single spell or other magical effect for 8 hours. For instance, you could make yourself and all your com panions immune to a lich’s life drain attack.
• You undo a single recent event by forcing a reroll of any roll made within the last round (including your last turn). Reality reshapes itself to accommodate the new result. For example, a wish spell could undo an opponent’s successful save, a foe’s critical hit, or a friend’s failed save. You can force the reroll to be made with advantage or disadvantage, and you can choose whether to use the reroll or the original roll.
You might be able to achieve something beyond the scope of the above examples. State your wish to the DM as precisely as possible. The DM has great latitude in ruling what occurs in such an instance; the greater the wish, the greater the likelihood that something goes wrong. This spell might simply fail, the effect you desire mightonlybepartlyachieved,oryoumightsuffersome unforeseen consequence as a result of how you worded the wish. For example, wishing that a villain were dead might propel you forward in time to a period when that villain is no longer alive, effectively removing you from the game. Similarly, wishing for a legendary magic item or artifact might instantly transport you to the presence of the item’s current owner.
The stress of casting this spell to produce any effect other than duplicating another spell weakens you. After enduring that stress, each time you cast a spell until you finish a long rest, you take 1d10 necrotic damage per level of that spell. This damage can’t be reduced or prevented in any way. In addition, your Strength drops to 3, if it isn’t 3 or lower already, for 2d4 days. For each of those days that you spend resting and doing nothing more than light activity, your remaining recovery time decreases by 2 days. Finally, there is a 33 percent chance that you are unable to cast wish ever again if you suffer this stress.'
      }
      {
        name: "Witch Bolt"
        level: 1
        school: 'Evocation'
        castingTime: '1 Action '
        range: 30
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a twig from a tree that has been struck by lightning'
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 289
        descriptions:
          main: 'A beam of crackling, blue energy lances out toward a creature within range, forming a sustained arc of lightning between you and the target.
Make a ranged spell attack against that creature. On a hit, the target takes 1d12 lightning damage, and on each of your turns for the duration, you can use your action to deal 1d12 lightning damage to the target automatically. The spell ends if you use your action to do anything else. The spell also ends if the target is ever outside the spell’s range or if it has total cover from you.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, the initial damage increases by 1d12 for each slot level above 1st.'
      }
      {
        name: "Word of Recall"
        level: 6
        school: 'Conjuration'
        castingTime: '1 Action '
        range: 5
        duration: 'Instantaneous'
        components: ['Verbal']
        classes: [
          Class.findOne({ name: 'Cleric' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 289
        descriptions:
          main: 'You and up to five willing creatures within 5 feet of you instantly teleport to a previously designated sanctuary. You and any creatures that teleport with you appear in the nearest unoccupied space to the spot you designated when you prepared your sanctuary (see below).
		If you cast this spell without first preparing a sanctuary, the spell has no effect. You must designate a sanctuary by casting this spell within a location, such as a temple, dedicated to or strongly linked to your deity. If you attempt to cast the spell in this manner in an area that isn’t dedicated to your deity, the spell has no effect.'
      }
      {
        name: "Wrathful Smite"
        level: 1
        school: 'Evocation'
        castingTime: '1 Bonus Action'
        range: 0
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal']
        classes: [
          Class.findOne({ name: 'Paladin' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 289
        descriptions:
          main: 'The next time you hit with a melee weapon attack during this spell’s duration, your attack deals an extra 1d6 psychic damage.
Additionally, if the target is a creature, it must make a Wisdom saving throw or be frightened of you until the spell ends. As an action, the creature can make a Wisdom check against your spell save DC to steel its resolve and end this spell.'
      }
      {
        name: "Zone of Truth"
        level: 2
        school: 'Enchantment'
        castingTime: '1 Action '
        range: 60
        duration: '10 minutes '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Paladin' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 289
        descriptions:
          main: 'You create a magical zone that guards against deception in a 15-foot-radius sphere centered on a point of your choice within range.
Until the spell ends, a creature that enters the spell’s area for the first time on a turn or starts its turn there must make a Charisma saving throw. On a failed save, a creature can’t speak a deliberate lie while in the radius. You know whether each creature succeeds or fails on its saving throw.
An affected creature is aware of the spell and can thus avoid answering questions to which it would normally respond with a lie. Such creatures can be evasive in its answers as long as it remains within the boundaries of the truth.'
      }
    ]

    spells.forEach (spell) ->
      spell.createdAt = new Date()
      Spell.insert spell