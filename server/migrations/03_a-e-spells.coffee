Migrations.add
  version: 3
  name: 'Add a-e spells'
  up: ->
    spells = [
      {
        name: "Acid Splash"
        level: 0
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 60
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 211
        descriptions:
          main: 'You hurl a bubble of acid. Choose one creature within range, or choose two creatures within range that are within 5 feet of each other. A target must succeed on a Dexterity saving throw or take 1d6 acid damage. '
          level: 'This spell�s damage increases by 1d6 when you reach 5th level (2d6), 11th level (3d6), and 17th level (4d6).'
      }
      {
        name: "Aid"
        level: 2
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 30
        duration: '8 Hours'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'A tiny strip of white cloth'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Paladin' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 211
        descriptions:
          main: 'Your spell bolsters your allies with toughness and resolve. Choose up to three creatures within range. Each target�s hit point maximum and current hit points increase by 5 for the duration.'
          level: 'When you cast this spell using a spell slot of 3rd level or higher, a target�s hit points increase by an additional 5 for each slot level above 2nd.'
      }
      {
        name: "Alarm (Ritual)"
        level: 1
        school: 'Abjuration'
        castingTime: '1 Minute'
        range: 30
        duration: '8 Hours'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a tiny bell and a piece of fine silver wire'
        classes: [
          Class.findOne({ name: 'Ranger' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 211
        descriptions:
          main: 'You set an alarm against unwanted intrusion. Choose a door, a window, or an area within range that is no larger than a 20-foot cube. Until the spell ends, an alarm alerts you whenever a tiny or larger creature touches or enters the warded area. When you cast the spell, you can designate creatures that won�t set off the alarm. You also choose whether the alarm is mental or audible. A mental alarm alerts you with a ping in your mind if you are within 1 mile of the warded area. This ping awakens you if you are sleeping. An audible alarm produces the sound of a hand bell for 10 seconds within 60 feet.'
      }
      {
        name: "Alter Self"
        level: 2
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 1 hour'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 211
        descriptions:
          main: "You assume a different form. When you cast the spell, choose one of the following options, the effects of which last for the duration of the spell. While the spell lasts, you can end one option as an action to gain the benefits of a different one. Aquatic Adaptation. You adapt your body to an aquatic environment, sprouting gills, and growing webbing between your fingers. You can breathe underwater and gain a swimming speed equal to your walking speed. Change Appearance. You transform your appearnce. You decide what you look like, including your height, weight, facial features, sound of your voice, hair length, coloration, and distinguishing characteristics, if any. You can make yourself appear as a member of another race, though none of your statistics change. You also don�t appear as a creature of a different size than you, and your basic shape stays the same; if you're bipedal, you can�t use this spell to become quadrupedal, for instance. At any time for the duration of the spell, you can use your action to change your appearance in this way again. Natural Weapons. You grow claws, fangs, spines, horns, or a different natural weapon of your choice. Your unarmed strikes deal 1d6 bludgeoning, piercing, or slashing damage, as appropriate to the natural weapon you chose, and you are proficient with your unarmed strikes. Finally, the natural weapon is magic and you have a +1 bonus to the attack and damage rolls you make using it."
      }
      {
        name: "Animal Friendship"
        level: 1
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 30
        duration: '24 Hours'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a morsel of food'
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Ranger' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 212
        descriptions:
          main: 'This spell lets you convince a beast that you mean it no harm. Choose a beast that you can see within range. It must see and hear you. If the beast�s Intelligence is 4 or higher, the spell fails. Otherwise, the beast must succeed on a Wisdom saving throw or be charmed by you for the spell�s duration. If you or one of your companions harms the target, the spell ends.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, you can affect one additional beast for each slot level above 1st.'
      }
      {
        name: "Animal Messenger (Ritual)"
        level: 2
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 30
        duration: '24 Hours'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a morsel of food'
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Ranger' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 212
        descriptions:
          main: 'By means of this spell, you use an animal to deliver a message. Choose a Tiny beast you can see within range, such as a squirrel, a blue ray, or a bat. You specify a location, which you must have visited, and a recipient who matches a general description, such as a man or woman dressed in the uniform of the town guard or a red-haired dwarf wearing a pointed hat. You also speak a message of up to twenty-five words. The target beast travels for the duration of the spell towards the specified location, covering about 50 miles per 24 hours for a flying messenger or 25 miles for other animals. When the messenger arrives, it delivers your message to the creature that you described, replicating the sound of your voice. The messenger speaks only to a creature matching the description you gave. If the messenger doesn�t reach its destination before the spell ends, the message is lost, and the beast makes it way back to where you cast this spell.'
          level: 'If you cast this spell using a spell slot of 3rd level or higher, the duration of the spell increases by 48 hours for each slot level above 2nd.'
      }
      {
        name: "Animal Shapes"
        level: 8
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 30
        duration: 'Concentration, up to 24 hours'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Druid' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 212
        descriptions:
          main: 'Your magic turns others into beasts. Choose any number of willing creatures that you can see within range. You transform each target into the form of a large or smaller beast with a challenge rating of 4 or lower. On subsequent turns, you can use your actions to transform affected creatures into new forms. The transformation lasts for the duration for each target, or until the target drops to 0 hit points or dies. You can choose a different form for each target. A target�s game statistics are replaced by the statistics of the chosen beast, though the target retains its alignment and Intelligence, Wisdom, and Charisma scores. The target assumes the hit points of its new form, and when it reverts to its normal form, it returns to the number of hit point it had before it transformed. If it reverts as a result of dropping to 0 hit points, any excess damage carries over to its normal form. As long as the excess damage doesn�t reduce the creature�s normal form to 0 hit points, it isn�t knocked unconcious. The creature is limited in the actions it can perform by the nature of its new form, and it can�t speak or cast spells. The target�s gear melds into the new form. The target can�t activate, wield, or otherwise benefit from any of its equipment.'
      }
      {
        name: "Animate Dead"
        level: 3
        school: 'Necromancy'
        castingTime: '1 Minute'
        range: 10
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a drop of blood, a piece of flesh, and a pinch of bone dust'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 212
        descriptions:
          main: 'This spell creates an undead servant. Choose a pile of bones or a corpse of a Medium or Small humanoid within range. Your spell imbues the target with a foul mimicry of life, raising it as an undead creature. THe target becomes a skeleton if you chose bones or a zombie if you chose a corpse (the DM has the creature�s game statistics). On each of your turns, you can use a bonus action to mentally command any creature you made with this spell if the creature is within 60 feet of you (if you control multiple creatures, you can command any or all of them at the same time, issuing the same command to each one). You decide what action the creature will take and where it will move during its next turn, or you can issue a general command, such as to guard a particular chamber or corridor. If you issue no commands, the creature only defends itself against hostile creatures. Once given an order, the creature continues to follow it until its task is complete. The creature is under your control for 24 hours, after which it stops obeying any command you�ve given it. To maintain the control of the creature for another 24 hours, you must cast this spell on the creature again before the current 24-hour period ends. This use of the spell reasserts your control over up to four creatures you have animated with this spell, rather than animating a new one.'
          level: 'When you cast this spell using a spell slot o f 4th level or higher, you animate or reassert control over two additional undead creatures for each slot level above 3rd. Each o f the creatures must come from a different corpse or pile o f bones.'
      }
      {
        name: "Animate Objects"
        level: 5
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 120
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 213
        descriptions:
          main: 'Objects come to life at your command. Choose up to ten nonmagical objects within range that are not being worn or carried. Medium targets count as two objects, Large targets count as four objects, Huge targets count as eight objects. You can�t animate any object larger than Huge. Each target animates and becomes a creature under your control until the spell ends or until reduced to 0 hit points. As a bonus action, you can mentally command any creature you made with this spell if the creature is within 500 feet of you (if you control multiple creatures, you can command any or all of them at the same time, issuing the same command to each one). You decide what action the creature will take and where it will move during its next turn, or you can issue a general command, such as to guard a particular chamber or corridor. If you issue no commands, the creature only defends itself against hostile creatures. Once given an order, the creature continues to follow it until its task is complete. Animated Object Statistics Tiny � HP: 20, AC: 18, Attack: +8 to hit, 1d4 + 4 damage, Str: 4, Dex: 18 Small � HP: 25, AC: 16, Attack: +6 to hit, 1d8 + 2 damage, Str: 6, Dex: 14 Medium � HP: 40, AC: 13, Attack: +5 to hit, 2d6 + 1 damage, Str: 10, Dex: 12 Large � HP: 50, AC: 10, Attack: +6 to hit, 2d10 + 2 damage, Str: 14, Dex: 10 Huge � HP: 80, AC: 10, Attack: +8 to hit, 2d12 + 4 damage, Str: 18, Dex: 6 An animated object is a construct with AC, hit points, attacks, Strength, and Dexterity determine by its size. Its Constitution is 10 and its Intelligence and Wisdom are 3, and its Charisma is 1. Its speed is 30 feet; if the objects lack legs or other appendages it can use for locomotion, it instead has a flying speed of 30 feet and can hover. If the object is securely attached to a surface or larger object, such as a chain bolted to a wall, its speed is 0. It has blindsight with a radius of 30 feet and is blind beyond that distance. When the animated object drops to 0 hit points, it reverts to its original object form, and any remaining damage carries over to its original object form. If you command an object to attack, it can make a single melee attack against a creature within 5 feet of it. It makes a slam attack with an attack bonus and bludgeoning damage determine by its size. The DM might rule that a specific object inflicts slashing or piercing damage based on its form.'
          level: 'If you cast this spell using a spell slot o f 6th level or higher, you can animate two additional objects for each slot level above 5th.'
      }
      {
        name: "Antilife Shell"
        level: 5
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 1 hour'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Druid' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 213
        descriptions:
          main: 'A shimmering barrier extends out from you in a 10-foot radius and moves with you, remaining centered on you and hedging out creatures other than undead and constructs. The barrier lasts for the duration. The barrier prevents an affected creature from passing or reaching through. An affected creature can cast spells or make attacks with ranged or reach weapons through the barrier. If you move so that an affect creature is forced to pass through the barrier, the spell ends.'
      }
      {
        name: "Antimagic Field"
        level: 8
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 1 hour'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a pinch of powdered iron or iron filings'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 213
        descriptions:
          main: 'A 10-foot-radius invisible sphere of antimagic surrounds you. This area is divorced from the magical energy that suffeses the multiverse. Within the sphere, spells can�t be cast, summoned creatures disappear, and even magic items become mundane. Until the spell ends, the spere moves with you, centered on you. Spells and other magical effects, except those created by an artifact or a deity, are suppressed in the sphere and can�t protrude into it. A slot expended to cast a suppressed spell is consumed. While an effect is suppressed, it doesn�t function, but the time it spends suppressed counts against its duration. Targeted Effects. Spells and other magical effects, such as magic missle and charm person, that target a creature or an object in the sphere have no effect on that target. Areas of Magic. The area of another spell or magical effect, such as fireball, can�t extend into the sphere. If the sphere overlaps an area of magic, the part of the area that is covered by the sphere is suppressed. For example, the flames created by a wall of fire are suppressed within the sphere, creating a gap in the wall if the overlap is large enough. Spells.  Any active spell or other magical effect on a creature or an object in the sphere is suppressed while the creature or object is in it. Magic Items. The properties and powers of magic items are suppressed in the sphere. Forexample, a +1 longsword in the sphere functions as a nonmagical longsword. A magic weapon�s properties and powers are suppressed if it is used against a target in the sphere or wielded by an attacker in the sphere. If a magic weapon or piece of magic ammunition fully leaves the sphere (For example, if you fire a magic arrow or throw a magic spear at a target outside the sphere), the magic of the item ceases to be supressed as soon as it exits. Magical Travel. Teleportation and planar travel fail to work in the sphere, whether the sphere is the destination or the departure point for such magical travel. A portal to another location, world, or plane of existence, as well as an opening to an extradimensional space such as that created by the rope trick spells, temporarily closes while in the sphere. Creatures and Objects. A creature or object summoned or created by magic temporarily winks out of existence in the sphere. Such a creature instantly reappears once the space the creature occupied is no longer withinthe sphere. Dispel Magic. Spells and magical effects such as dispel magic have no effect on the sphere. Likewise, the spheres created by different antimagic field spells don�t nullify each other.'
      }
      {
        name: "Antipathy/Sympathy"
        level: 8
        school: 'Enchantment'
        castingTime: '1 Hour'
        range: 60
        duration: '10 Days'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'either a lump o f alum soaked in vinegar for the antipathy effect or a drop o f honey for the sympathy effect'
        classes: [
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 214
        descriptions:
          main: 'This spell attracts or repels creatures of your choice.
You target something within range, either a Huge or smaller object or creature or an area that is no larger than a 200-foot cube. Then specify a kind of intelligent creature, such as red dragons, goblins, or vampires. You invest the target with an aura that either attracts or repels the specified creatures for the duration. Choose antipathy or sympathy as the aura�s effect.

Antipathy.
The enchantment causes creatures of the kind you designated to feel an intense urge to leave the area and avoid the target. When such a creature can see the target or comes within 60 feet of it, the creature must succeed on a Wisdom saving throw or become frightened. The creature remains frightened while it can see the target or is within 60 feet of it. While frightened by the target, the creature must use its movement to move to the nearest safe spot from which it can�t see the target. If the creature moves more than 60 feet from the target and can�t see it, the creature is no longer frightened, but the creature becomes frightened again if it regains sight of the target or moves within 60 feet of it.

Sympathy.
The enchantment causes the specified creatures to feel an intense urge to approach the target while within 60 feet of it or able to see it. When such a creature can see the target or comes within 60 feet o fit, the creature must succeed on a Wisdom saving throw or use its movement on each of its turns to enter the area or move within reach of the target. When the creature has done so, it can�t willingly move away from the target. If the target damages or otherwise harms an affected creature, the affected creature can make a Wisdom saving throw to end the effect, as described below.

Ending the Effect.
If an affected creature ends its turn while not within 60 feet of the target or able to see it, the creature makes a Wisdom saving throw. On a successful save, the creature is no longer affected by the target and recognizes the feeling of repugnance or attraction as magical. In addition, a creature affected by the spell is allowed another Wisdom saving throw every 24 hours while the spell persists.
A creature that successfully saves against this effect is immune to it for 1 minute, after which time it can be affected again.'
      }
      {
        name: "Arcane Eye"
        level: 4
        school: 'Divination'
        castingTime: '1 Action'
        range: 30
        duration: 'Concentration, up to 1 hour'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a bit of bat fur'
        classes: [
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 214
        descriptions:
          main: 'You create an invisible, magical eye within range that hovers in the air for the duration.
You mentally receive visual information from the eye, which has normal vision and darkvision out to 30 feet. The eye can look in every direction.
As an action, you can move the eye up to 30 feet in any direction. There is no limit to how far away from you the eye can move, but it can�t enter another plane of existence. A solid barrier b locks the eye�s movement, but the eye can pass through an opening as small as 1 inch in diameter.'
      }
      {
        name: "Arcane Gate"
        level: 6
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 500
        duration: 'Concentration, up to 10 minutes'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 214
        descriptions:
          main: 'You create linked teleportation portals that remain open for the duration.
Choose two points on the ground that you can see, one point within 10 feet of you and one point within 500 feet of you. A circular portal, 10 feet in diameter, opens over each point. If the portal would open in the space occupied by a creature, the spell fails, and the casting is lost.

The portals are two-dimensional glowing rings filled with mist, hovering inches from the ground and perpendicular to it at the points you choose. A ring is visible only from one side (your choice), which is the side that functions as a portal.

Any creature or object entering the portal exits from the other portal as if the two were adjacent to each other; passing through a portal from the nonportal side has no effect. The mist that fills each portal is opaque and blocks vision through it. On your turn, you can rotate the rings as a bonus action so that the active side faces in a different direction.'
      }
      {
        name: "Arcane Lock"
        level: 2
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 5
        duration: 'Until dispelled'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'gold dust worth at least 25 gp, which the spell consumes'
        classes: [
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 215
        descriptions:
          main: 'You touch a closed door, window, gate, chest, or other entryway, and it becomes locked for the duration.
You and the creatures you designate when you cast this spell can open the object normally. You can also set a password that, when spoken within 5 feet of the object, suppresses this spell for 1 minute. Otherwise, it is impassable until it is broken or the spell is dispelled or suppressed. Casting knock on the object suppresses arcane lock for 10 minutes.
While affected by this spell, the object is more difficult to break or force open'
      }
      {
        name: "Armor of Agathys"
        level: 1
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 0
        duration: '1 Hour'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a cup of water'
        classes: [
          Class.findOne({ name: 'Warlock' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 215
        descriptions:
          main: 'A protective magical force surrounds you, manifesting as a spectral frost that covers you and your gear.
You gain 5 temporary hit points for the duration. If a creature hits you with a melee attack while you have these hit points, the creature takes 5 cold damage. '
          level: 'When you cast this spell using a spell slot of 2nd level or higher, both the temporary hit points and the cold damage increase by 5 for each slot'
      }
      {
        name: "Arms of Hadar"
        level: 1
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 0
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Warlock' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 215
        descriptions:
          main: 'You invoke the power of Hadar, the Dark Hunger.
Tendrils of dark energy erupt from you and batter all creatures within 10 feet of you. Each creature in that area must make a Strength saving throw. On a failed save, a target takes 2d6 necrotic damage and can�t take reactions until its next turn. On a successful save, the creature takes half damage, but suffers no other effect. '
          level: 'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.'
      }
      {
        name: "Astral Projection"
        level: 9
        school: 'Necromancy'
        castingTime: '1 Hour'
        range: 10
        duration: 'Special'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'for each creature you affect with this spell, you must provide one jacinth worth at least 1,000 gp and one ornately carved bar o f silver worth at least 100 gp, all o f which the spell consumes'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 215
        descriptions:
          main: 'You and up to eight willing creatures within range project your astral bodies into the Astral Plane (the spell fails and the casting is wasted if you are already on that plane).
The material body you leave behind is unconscious and in a state of suspended animation; it doesn�t need food or air and doesn�t age.

Your astral body resembles your mortal form in almost every way, replicating your game statistics and possessions. The principal difference is the addition of a silvery cord that extends from between your shoulder blades and trails behind you, fading to invisibility after 1 foot. This cord is your tether to your material body. As long as the tether remains intact, you can find your way home. If the cord is cut something that can happen only when an effect specifically states that it does your soul and body are separated, killing you instantly.

Your astral form can freely travel through the Astral Plane and can pass through portals there leading to any other plane. If you enter a new plane or return to the plane you were on when casting this spell, your body and possessions are transported along the silver cord, allowing you to re-enter your body as you enter the new plane. Your astral form is a separate incarnation. Any damage or other effects that apply to it have no effect on your physical body, nor do they persist when you return to it. The spell ends for you and your companions when you use your action to dismiss it. When the spell ends, the affected creature returns to its physical body, and it awakens.

The spell might also end early for you or one of your companions. A successful dispel magic spell used against an astral or physical body ends the spell for that creature. If a creature�s original body or its astral form drops to 0 hit points, the spell ends for that creature. If the spell ends and the silver cord is intact, the cord pulls the creature�s astral form back to its body, ending its state of suspended animation. If you are returned to your body prematurely, your companions remain in their astral forms and must find their own way back to their bodies, usually by dropping to 0 hit points.'
      }
      {
        name: "Augury (Ritual)"
        level: 2
        school: 'Divination'
        castingTime: '1 Minute'
        range: 0
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'specially marked sticks, bones, or similar tokens w orth at least 25 gp'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 215
        descriptions:
          main: 'By casting gem-inlaid sticks, rolling dragon bones, laying out ornate cards, or employing some other divining tool, you receive an omen from an otherworldly entity about the results of a specific course of action that you plan to take within the next 30 minutes. The DM chooses from the following possible omens:

� Weal, for good results
� Woe, for bad results
� Weal and woe, for both good and bad results
� Nothing, for results that aren�t especially good or bad

The spell doesn�t take into account any possible circumstances that might change the outcome, such as the casting of additional spells or the loss or gain of a companion. If you cast the spell two or more times before completing your next long rest, there is a cumulative 25 percent chance for each casting after the first that you get a random reading. The DM makes this roll in secret.'
      }
      {
        name: "Aura of Life"
        level: 4
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 10 minutes'
        components: ['Verbal']
        classes: [
          Class.findOne({ name: 'Paladin' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 216
        descriptions:
          main: 'Life-preserving energy radiates from you in an aura with a 30-foot radius.
Until the spll ends, the aura moves with you, centered on you. Each nonhostile creature in the aura (including you) has resistance to necrotic damage, and its hit point maximum can�t be reduced. In addition, a nonhostile, living creature regains 1 hit point when it starts its turn in the arua with 0 hit points.'
      }
      {
        name: "Aura of Purity"
        level: 4
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 10 minutes'
        components: ['Verbal']
        classes: [
          Class.findOne({ name: 'Paladin' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 216
        descriptions:
          main: '
Purifying energy radiates from you in an aura with a 30-foot radius.
Until the spell ends, the aura moves with you, centered on you. Each nonhostile creature in the aura (including you) can�t become diseased, has resistance to poison damage, and has advantage on saving throws against effects that cause any of the following conditions: blnded, charmed, deafended, frightened, paralyzed, poisoned, and stunned.'
      }
      {
        name: "Aura of Vitality"
        level: 3
        school: 'Evocation'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 216
        descriptions:
          main: 'Healing energy radiates from you in an aura with a 30-foot radius.
Until the spell ends, the aura moves with you, centered on you. You can use a bonus action to cause one creature in the aura (including you) to regain 2d6 hit points.'
      }
      {
        name: "Awaken"
        level: 5
        school: 'Transmutation'
        castingTime: '8 Hours'
        range: 5
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'an agate worth at least 1,000 gp, which the spell consumes'
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Druid' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 216
        descriptions:
          main: 'After spending the casting time tracing magical pathways within a precious gemstone, you touch a huge or smaller beast or plant.
The target must have either no Intelligence score or an Intelligence of 3 or less. The target gains an Intelligence of 10. The target also gains the ability to speak one language you know. If the target is a plant, it gains the ability to move its limbs, roots, vinces, creepers, and so forth, and it gains senses similar to a huamn�s. Your DM chooses statistics appropriate for the awakened plant, such as the statistics for the awakened shrub or the awakened tree.

The awakened beast or plant is charmed by you for 30 days or until you and your companions do anything harmful to it. When the charmed condition ends, the awakened creature chooses whether to remain friendly to you, based on how you treated it while it was charmed.'
      }
      {
        name: "Bane"
        level: 1
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 30
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a drop of blood'
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Cleric' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 216
        descriptions:
          main: 'Up to three creatures of your choice that you can see within range must make Charisma saving throws. Whener a target that fails this saving throw makes an attack roll or a saving throw before the spell ends, the target must roll a d4 and subtract the number rolled from the attack roll or saving throw.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, you can target one aditional creature for each slot level above 1st.'
      }
      {
        name: "Banishing Smite"
        level: 5
        school: 'Abjuration'
        castingTime: '1 Bonus Action'
        range: 0
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal']
        classes: [
          Class.findOne({ name: 'Paladin' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 216
        descriptions:
          main: 'The next time you hit a creature with a weapon attack before this spell ends, your weapon crackles with force, and the attack deals an extra 5d10 force damage to the target. Additionally, if this attack reduces the target to 50 hit points of fewer, you banish it. If the target is native to a different plane of existence than the on you�re on, the target disappears, returning to its home plane. If the target is native to the plane you�re on, the creature vanishes into a harmless demiplane. While there, the target is incapacitated. It remains there until the spell ends, at which point the tart reappears in the space it left or in the nearest unoccupied space if that space is occupied.'
      }
      {
        name: "Banishment"
        level: 4
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 60
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'an item distasteful to the target'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Paladin' })._id
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 217
        descriptions:
          main: 'You attempt to send one creature that you can see within range to another place of existence.
The target must succeed on a Charisma saving throw or be banished. If the target is native to the plane of existence you�re on, you banish the target to a harmless demiplane. While there, the target is incapacitated. The target remains there until the spell ends, at which point the target reappears in the space it left or in the nearest unoccupied space if that space is occupied. If the taret is native to a different plane of existence that the one you�re on, the target is banished with a faint popping noise, returning to its home plane.
If the spell ends before 1 minute has passed, the target reappears in the space it left or in the nearest unoccupied space if that space is occupied. Otherwise, the target doesn�t return.'
          level: 'When you cast this spell using a spell slot of 5th level or higher, you can target one additional creature for each slot level above 4th.'
      }
      {
        name: "Barkskin"
        level: 2
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 5
        duration: 'Concentration, up to 1 hour'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a handful of oak bark'
        classes: [
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Ranger' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 217
        descriptions:
          main: 'You touch a willing creature. Until the spellends, the target�s skin has a rough, bark-like appearance, and the target�s AC can�t be less than 16, regardless of what kind of armor it is wearing.'
      }
      {
        name: "Beacon of Hope"
        level: 3
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 30
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Cleric' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 217
        descriptions:
          main: 'This spell bestows hope and vitality. Choose any number of creatures within range. For the duration, each target has advantage on Wisdom saing throws and death saving throws, and regians the maximum number of hit points possible from any healing.'
      }
      {
        name: "Beast Sense (Ritual)"
        level: 2
        school: 'Divination'
        castingTime: '1 Action'
        range: 5
        duration: 'Concentration, up to 1 hour'
        components: ['Somatic']
        classes: [
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Ranger' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 217
        descriptions:
          main: 'You touch a willing beast. For the duration of the spell, you can use your action to see through the beast�s eyes and hear what it hears, and continue to do so until you use your action to return to your normal senses.'
      }
      {
        name: "Bestow Curse"
        level: 3
        school: 'Necromancy'
        castingTime: '1 Action'
        range: 5
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 218
        descriptions:
          main: 'You touch a creature, and that creature must succeed on a Wisdom saving throw or become cursed for the duration of the spell. When you cast this spell, choose the nature of the curse from the following options: ? Choose one ability score. While cursed, the target has disadvantage on ability checks and saving throws made with that ability score. ? While cursed, the target has disadvantage on attack rolls against you. ? While cursed, the target must make a Wisdom saving throw at the start of each of its turns. If it fails, it wastes its action that turn doing nothing. ? While the target is cursed, your attacks and spells deal an extra 1d8 necrotic damage to the target. A remove curse spell ends this effect. At the DM�s option, you may choose an alternative curse effect, but it should be no more powerful than those described above. The DM has final say on such a curse�s effect.'
          level: 'If you cast this spell using a spell slot of 4th level or higher, the duration is concentration, up to 10 minutes. If you use a spell slot of 5th level or higher, the duration is 8 hours. If you use a spell slot of 7th level or higher, the duration is 24 hours. If you use a 9th level spell slot, the spell lasts until it is dispelled. Using a spell slot of 5th level or higher grants a duration that doesn�t require concentration.'
      }
      {
        name: "Bigby�s Hand"
        level: 5
        school: 'Evocation'
        castingTime: '1 Action'
        range: 120
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'an eggshell and a snakeskin glove'
        classes: [
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 218
        descriptions:
          main: 'You create a Large hand of shimmering, translucent force in an unoccupied space that you can see within range. The hand lasts for the spell�s duration, and it moves at your command, mimicking the movements of your own hand. The hand is an object that has AC 20 and hit points equal to your hit point maximum. If it drops to 0 hit points, the spell ends. It has a Strength of 26 (+8) and a Dexterity of 10 (+0). The hand doesn�t fill its space. When you cast the spell and as a bonus action on your subsequent turns, you can move the hand up to 60 feet and then cause one of the following effects with it. Clenched Fist. The hand strikes one creature or object within 5 feet of it. Make a melee spell attack for the hand using your game statistics. On a hit, the target takes 4d8 force damage. Forceful Hand. The hand attempts to push a creature within 5 feet of it in a direction you choose. Make a check with the hand�s Strength contested by the Strength (Athletics) check of the target. If the target is Medium or smaller, you have advantage on the check. If you succeed, the hand pushes the target up to 5 feet plus a number of feet equal to five times your spellcasting ability modifier. The hand moves with the target to remain within 5 feet of it. Grasping Hand. The hand attempts to grapple a Huge or smaller creature within 5 feet of it. You use the hand�s Strength score to resolve the grapple. If the target is Medium or smaller, you have advantage on the check. While the hand is grappling the target, you can use a bonus action to have the hand crush it. When you do so, the target takes bludgeoning damage equal to 2d6 + your spellcasting ability modifier. Interposing Hand. The hand interposes itself between you and a creature you choose until you give the hand a different command. The hand moves to stay between you and the target, providing you with half cover against the target. The target can�t move through the hand�s space if its Strength score is less than or equal to the hand�s Strength score. If its Strength score is higher than the hand�s Strength score, the target can move toward you through the hand�s space, but that space is difficult terrain for the target.'
          level: 'When you cast this spell using a spell slot of 6th level or higher, the damage from the clenched fist option increases by 2d8 and the damage from the grasping hand increases by 2d6 for each slot level above 5th.'
      }
      {
        name: "Blade Barrier"
        level: 6
        school: 'Evocation'
        castingTime: '1 Action'
        range: 90
        duration: 'Concentration, up to 10 minutes'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Cleric' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 218
        descriptions:
          main: 'You create a vertical wall of whirling, razor-sharp blades made of magical energy. The wall appears within range and lasts for the duration. You can make a straight wall up to 100 feet long, 20 feet high, and 5 feet thick, or a ringed wall up to 60 feet in diameter, 20 feet high, and 5 feet thick. The wall provides three-quarters cover to creatures behind it, and its space is difficult terrain. When a creature enters the wall�s area for the first time on a turn or starts its turn there, the creature must make a Dexterity saving throw. On a failed save, the creature takes 6 d10 slashing damage. On a successful save, the creature takes half as much damage.'
      }
      {
        name: "Blade Ward"
        level: 0
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 0
        duration: '1 Round'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 218
        descriptions:
          main: 'You extend your hand and trace a sigil of warding in the air. Until the end of your next turn, you have resistance against bludgeoning, piercing, and slashing damage dealt by weapon attacks.'
      }
      {
        name: "Bless"
        level: 1
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 30
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a sprinkling of holy water'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Paladin' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 219
        descriptions:
          main: 'You bless up to three creatures of your choice within range. Whenever a target makes an attack roll or a saving throw before the spell ends, the target can roll a d4 and add the number rolled to the attack roll or saving throw.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st.'
      }
      {
        name: "Blight"
        level: 4
        school: 'Necromancy'
        castingTime: '1 Action'
        range: 30
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 219
        descriptions:
          main: 'Necromantic energy washes over a creature of your choice that you can see within range, draining moisture and vitality from it. The target must make a Constitution saving throw. The target takes 8d8 necrotic damage on a failed save, or half as much damage on a successful one. The spell has no effect on undead or constructs.

If you target a plant creature or a magical plant, it makes the saving throw with disadvantage, and the spell deals maximum damage to it.

If you target a nonmagical plant that isn�t a creature, such as a tree or shrub, it doesn�t make a saving throw; it simply withers and dies.'
          level: 'When you cast this spell using a spell slot of 5th level of higher, the damage increases by 1d8 for each slot level above 4th.'
      }
      {
        name: "Blinding Smite"
        level: 3
        school: 'Evocation'
        castingTime: '1 Bonus Action'
        range: 0
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal']
        classes: [
          Class.findOne({ name: 'Paladin' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 219
        descriptions:
          main: 'The next time you hit a creature with a melee weapon attack during this spell�s duration, you weapon flares with a bright light, and the attack deals an extra 3d8 radiant damage to the target. Additionally, the target must succeed on a Constitution saving throw or be blinded until the spell ends. A creature blinded by this spell makes another Constitution saving throw at the end of each of its turns. On a successful save, it is no longer blinded.'
      }
      {
        name: "Blindness/Deafness"
        level: 2
        school: 'Necromancy'
        castingTime: '1 Action'
        range: 30
        duration: '1 Minute'
        components: ['Verbal']
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 219
        descriptions:
          main: 'You can blind or deafen a foe. Choose one creature that you can see within range to make a Constitution saving throw. If it fails, the target is either blinded or deafened (your choice) for the duration. At the end of each of its turns, the target can make a Constitution saving throw. On a success, the spell ends.'
          level: 'When you cast this spell using a spell slot of 3rd or higher, you can taget one additiona creature for each slot level above 2nd.'
      }
      {
        name: "Blink"
        level: 3
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 0
        duration: '1 Minute'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 219
        descriptions:
          main: 'Roll a d20 at the end of each of your turns for the duration of the spell. On a roll of 11 or higher, you vanish from your current plane of existence and appear in the Etheral Plane (the spell fails and the casting is wasted if you were already on that plane). At the start of you next turn, and when the spell ends if you are on the Etheral Plane, you return to an unoccupied space of your choice that you can see within 10 feet of the space you vanished from. If no unoccupied space is available within that rang, you appear in the nearest unoccupied space (chosen at random if more that one space is equally near). You can dismiss this spell as an action. While on the Ethereal Plane, you can see and hear the plane you originated from, which is cast in shades of gray, and you can�t see anything more than 60 feet away.You can only affect and be affected by other reatures on the Ethereal Plane. Creature that aren�t there can�t perceive you or interact with you, unless they have the ability to do so.'
      }
      {
        name: "Blur"
        level: 2
        school: 'Illusion'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 219
        descriptions:
          main: 'Your body becomes blurred, shifting and wavering to all who can see you. For the duration, any creature has disadvantage on attack rolls against you. An attacker is immune to this effect if it doesnt rely on sight, as with blindsight, or can see through illusions, as with truesight.'
          level: ''
      }
      {
        name: "Branding Smite"
        level: 2
        school: 'Evocation'
        castingTime: '1 Bonus Action'
        range: 0
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Paladin' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 219
        descriptions:
          main: 'The next time you hit a creature with a weapon attack before this spell ends, the weapon glemas with astral radiance as you strike. The attack deals an extra 2d6 radiant damage to the target, which becomes visible if it is invisible, and the target sheds dim light in a 5-foot radius and can�t become invisible until the spell ends.'
          level: 'When you cast this spell using a spell slot of 3rd level or higher, the extra damage increases by 1d6 for each slot level above 2nd.'
      }
      {
        name: "Burning Hands"
        level: 1
        school: 'Evocation'
        castingTime: '1 Action'
        range: 0
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 220
        descriptions:
          main: 'As you hold your hands with thumbs touching and fingers spread, a thin sheet of flames shoots forth from your outstretched fingertips. Each creature in a 15-foot cone must make a Dexterity saving throw. A creature takes 3d6 fire damage on a failed save, or half as much damage on a successful one. The fire ignites any flammable objects in the area that aren�t being worn or carried.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.'
      }
      {
        name: "Call Lightning"
        level: 3
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 120
        duration: 'Concentration, up to 10 minutes'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Druid' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 220
        descriptions:
          main: 'A storm cloud appears in the shape of a cylinder that is 10 feet tall with a 60-foot radius, centered on a point you can see 100 feet directly above you. The spell fails if you can�t see a point in the air where the storm cloud could appear (for example, if you are in a room that can�t accommodate the cloud). When you cast the spell, choose a point you can see within range. A bolt of lightning flashes down from the cloud to that point. Each creature within 5 feet of that point must make a Dexterity saving throw. A creature takes 3d10 lightning damage on a failed save, or half as much damage on a successful one. On each of your turns until the spell ends, you can use your action to call down lightning in this way again, targeting the same point or a different one. If you are outdoors in stormy conditions when you cast this spell, the spell gives you control over the existing storm instead of creating a new one. Under such conditions, the spell�s damage increases by 1d10.'
          level: 'When you cast this spell using a spell slot of 4th or higher level, the damage increases by 1d10 for each slot level above 3rd.'
      }
      {
        name: "Calm Emotions"
        level: 2
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 60
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Cleric' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 221
        descriptions:
          main: 'You attempt to suppress strong emotions in a group of people. Each humanoid in a 20-foot-radius sphere centered on a point you choose within range must make a Charisma saving throw; a creature can choose to fail this saving throw if it wishes. If a creature fails its saving throw, choose one of the following two effects. You can suppress any effect causing a target to be charmed or frightened. When this spell ends, any suppressed effect resumes, provided that its duration has not expired in the meantime. Alternatively, you can make a target indifferent about creatures of your choice that it is hostile toward. This indifference ends if the target is attacked or harmed by a spell or if it witnesses any of its friends being harmed. When the spell ends, the creature becomes hostile again, unless the DM rules otherwise.'
      }
      {
        name: "Chain Lightning"
        level: 6
        school: 'Evocation'
        castingTime: '1 Action'
        range: 150
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a bit of fur, a piece of amber, glass, or crystal rod, and three silver pins'
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 221
        descriptions:
          main: 'You create a bolt of lightning that arcs toward a target of your choice that you can see within range. Three bolts then leap from that target to as many as three other targets, each of which must be within 30 feet of the first target. A target can be a creature or an object and can be targeted by only one of the bolts. A target must make a Dexterity saving throw. The target takes 10d8 lightning damage on a failed save, or half as much on a successful one.'
          level: 'When you cast this spell using a spell slot of 7th level or higher, one additional bolt leaps from the first target to another target for each slot level above 6th.'
      }
      {
        name: "Charm Person"
        level: 1
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 30
        duration: '1 Hour'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 221
        descriptions:
          main: 'You attempt to charm a humanoid you can see within range. It must make a Wisdom saving throw, and does so with advantage if you or your companions are fighting it. If it fails the saving throw, it is charmed by you until the spell ends or until you or your companions do anything harmful to it.The charmed creature regards you as a friendly acquaintance. When the spell ends, the creature knows it was charmed by you.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st. The creatures must be within 30 feet of each other when you target them.'
      }
      {
        name: "Chill Touch"
        level: 0
        school: 'Necromancy'
        castingTime: '1 Action'
        range: 120
        duration: '1 Round'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 221
        descriptions:
          main: 'You create a ghostly, skeletal hand in the space of a creature within range. Make a ranged spell attack against the creature to assail it with the chill of the grave. On a hit, the target takes 1d8 necrotic damage, and it can�t regain hit points until the start of your next turn. Until then, the hand clings to the target. If you hit an undead target, it also has disadvantage on attack rolls against you until the end of your next turn.'
          level: 'This spell�s damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).'
      }
      {
        name: "Chromatic Orb"
        level: 1
        school: 'Evocation'
        castingTime: '1 Action'
        range: 90
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a diamond worth at least 50 gp'
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 221
        descriptions:
          main: 'You hurl a 4-inch-diameter sphere of energy at a creature that you can see within range. You choose acid, cold, fire, lightning, poison, or thunder for the type of orb you create, and then make a ranged spell attack against the target. If the attack hits, the creature takes 3d8 damage of the type you chose.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d8 for each slot level above 1st.'
      }
      {
        name: "Circle of Death"
        level: 6
        school: 'Necromancy'
        castingTime: '1 Action'
        range: 150
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'the powder of a crushed black pearl worth at least 500 gp'
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 221
        descriptions:
          main: 'A sphere of negative energy ripples out in a 60-foot-radius sphere from a point within range. Each creature in that area must make a Constitution saving throw. A target takes 8d6 necrotic damage on a failed save, or half as much damage on a successful one.'
          level: 'When you cast this spell using a spell slot of 7th level or higher, the damage increases by 2d6 for each slot level above 6th.'
      }
      {
        name: "Circle of Power"
        level: 5
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 10 minutes'
        components: ['Verbal']
        classes: [
          Class.findOne({ name: 'Paladin' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 221
        descriptions:
          main: 'Divine energy radiates from you, distorting and diffusing magical energy within 30 feet of you. Until the spell ends, the sphere moves with you, centered on you. For the duration, each friendly creature in the area (including you) has advantage on saving throws against spells and other magical effects. Additionally, when an affected creature succeeds on a saving throw made against a spell or magical effect that allows it to make a saving throw to take only half damage, it instead takes no damage if it succeeds on the saving throws.'
      }
      {
        name: "Clairvoyance"
        level: 3
        school: 'Divination'
        castingTime: '10 Minutes'
        range: 1
        duration: 'Concentration, up to 10 minutes '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a focus worth at least 100 gp, either a jeweled horn for hearing or a glass eye for scrying'
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 222
        descriptions:
          main: 'You create an invisible sensor within range in a location familiar to you (a place you have visited or seen before) or in an obvious location that is unfamiliar to you (such as behind a door, around a corner, or in a grove of trees). The sensor remains in place for the duration, and it can�t be attacked or otherwise interacted with. When you cast the spell, you choose seeing or hearing. You can use the chosen sense through the sensor as if you were in its space. As your action, you can switch between seeing and hearing. A creature that can see the sensor (such as a creature benefitting from see invisibility or truesight) sees a luminous, intangible orb about the size of your fist.'
      }
      {
        name: "Clone"
        level: 8
        school: 'Necromancy'
        castingTime: '1 Hour'
        range: 5
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: '(a diamond worth at least 1,000 gp and at least 1 cubic inch of flesh of the creature that is to be cloned which the spell consumes, and a vessel worth at least 2,000 gp that has a sealable lid and is large enough to hold a Medium creature, such as a huge urn, coffin, mud-filled cyst in the ground, or crystal container filled with salt water'
        classes: [
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 222
        descriptions:
          main: 'This spell grows an inert duplicate of a living creature as a safeguard against death.
This clone forms inside a sealed vessel and grows to full size and maturity after 120 days; you can also choose to have the clone be a younger version of the same creature. It remains inert and endures indefinitely, as long as its vessel remains undisturbed.

At any time after the clone matures, if the original creature dies, its soul transfers to the clone, provided that the soul is free and willing to return. The clone is physically identical to the original and has the same personality, memories, and abilities, but none of the original�s equipment. The original creature�s physical remains, if they still exist, becom e inert and can�t thereafter be restored to life, since the creature�s soul is elsewhere.'
      }
      {
        name: "Cloud of Daggers"
        level: 2
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 60
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a sliver of glass'
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 222
        descriptions:
          main: 'You fill the air with spinning daggers in a cube 5 feet on each side, centered on a point you choose within range. A creature takes 4d4 slashing damage when it enters the spell�s area for the first time on a turn or starts its turn there.'
          level: 'When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 2d4 for each slot level above 2nd.'
      }
      {
        name: "Cloudkill"
        level: 5
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 120
        duration: 'Concentration, up to 10 minutes'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 222
        descriptions:
          main: 'You create a 20-foot-radius sphere of poisonous, yellow-green fog centered on a point you choose within range. The fog spreads around corners. It lasts for the duration or until strong wind dispereses the fog, ending the spell. Its area is heavily obscured. When a creature enters the spell�s area for the first time on a turn or starts its turn there, that creature must make a Constitution saving throw. The creature takes 5d8 poison damageon a failed save, or half as much damage on a successful one. Creatures are affected even if they hold their breath or don�t need to breathe. The fog moves 10 feet away from you at the start of each of your turns, rolling along the surface of the ground. The vapors, being heavier than air, sink to the lowest level of the land, even pouring down openings.'
          level: 'When you cast this spell using a spell slot of 6th level or higher, the damage increases by 1d8 for each slot level above 5th.'
      }
      {
        name: "Color Spray"
        level: 1
        school: 'Illusion'
        castingTime: '1 Action'
        range: 0
        duration: '1 Round'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a pinch of powder or sand that is colored red, yellow, and blue'
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 222
        descriptions:
          main: 'A dazzling array of flashing, colored light springs from your hand. Roll 6d10, the total is how many hit points of creatures this spell can effect. Creatures in a 15-foot cone originating from you are affected in ascending order of their current hit points (ignoring unconscious creatures and creatures that can�t see). Starting with the creature that has the lowest current hit points, each creature affected by this spell is blinded until the spell ends. Subtract each creature�s hit points from the total before moving on to the creature with the next lowest hit points. A creature�s hit points must be equal to or less than the remaining total for the creature to be affected.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, roll an additional 2d10 for each slot level above 1st.'
      }
      {
        name: "Command"
        level: 1
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 60
        duration: '1 Round'
        components: ['Verbal']
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Paladin' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 223
        descriptions:
          main: 'You speak a one-word command to a creature you can see within range. The target must succeed on a Wisdom saving throw or follow the command on its next turn. The spell has no effect if the target is undead, if it doesn�t understand your language, or if your command is directly harmful to it. Some typical commands and their effects follow. You might issue a command other than one described here. If you do so, the DM determines how the target behaves. If the target can�t follow your command, the spell ends. Approach. The target moves toward you by the shortest and most direct route, ending its turn if it moves within 5 feet of you. Drop. The target drops whatever it is holding and then ends its turn. Flee. The target spends its turn moving away from you by the fastest available means. Grovel. The target falls prone and then ends its turn. Halt. The target doesn�t move and takes no actions. A flying creature stays aloft, provided that it is able to do so. If it must move to stay aloft, it flies the minimum distance needed to remain in the air.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, you can affect one additional creature for each slot level above 1st. The creatures must be within 30 feet of each other when you target them.'
      }
      {
        name: "Commune (Ritual)"
        level: 5
        school: 'Divination'
        castingTime: '1 Minute'
        range: 0
        duration: '1 Minute'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'incense and a vial of holy or unholy water'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 223
        descriptions:
          main: 'You contact your deity or a divine proxy and ask up to three questions that can be answered with a yes or no. You must ask your questions before the spell ends. You receive a correct answer for each question. Divine beings aren�t necessarily omniscient, so you might receive �unclear� as an answer if a question pertains to information that lies beyond the deity�s knowledge. In a case where a one-word answer could be misleading or contrary to the deity�s interests, the DM might offer a short phrase as an answer instead. If you cast the spell two or more times before finishing your next long rest, there is a cumulative 25 percent chance for each casting after the first that you get no answer. The DM makes this roll in secret.'
      }
      {
        name: "Commune with Nature (Ritual)"
        level: 5
        school: 'Divination'
        castingTime: '1 Minute'
        range: 0
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Ranger' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 223
        descriptions:
          main: 'You briefly become one with nature and gain knowledge of the surrounding territory. In the outdoors, the spell gives you knowledge of the land within 3 miles of you. In caves and other natural underground settings, the radius is limited to 300 feet. The spell doesn�t function where nature has been replaced by construction, such as in dungeons and towns. You instantly gain knowledge of up to three facts of your choice about any of the following subjects as they relate to the area: � terrain and bodies of water � prevalent plants, minerals, animals, or peoples � powerful celestials, fey, fiends, elementals, or undead � influence from other planes of existence � buildings For example, you could determine the location of powerful undead in the area, the location of major sources of safe drinking water, and the location of any nearby towns.'
      }
      {
        name: "Compelled Duel"
        level: 1
        school: 'Enchantment'
        castingTime: '1 Bonus Action'
        range: 30
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal']
        classes: [
          Class.findOne({ name: 'Paladin' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 224
        descriptions:
          main: 'You attempt to compel a creature into a duel. One creature that you can see within range must make a Wisdom saving throw. On a failed save, the creature is drawn to you, compelled by your divine demand. For the duration, it has disadvantage on attack rolls against creatures other than you, and must make a Wisdom saving throw each time it attempts to move to a space that is more than 30 feet away from you; if it succeeds on this saving throw, this spell doesn�t restrict the target�s movement for that turn. The spell ends if you attack any other creature, if you cast a spell that targets a hostile creature other than the target, if a creature friendly to you damages the target or casts a harmful spell on it, or if you end your turn more than 30 feet away from the target.'
      }
      {
        name: "Comprehend Languages (Ritual)"
        level: 1
        school: 'Divination'
        castingTime: '1 Action'
        range: 0
        duration: '1 Hour'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a pinch of soot and salt'
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 224
        descriptions:
          main: 'For the duration, you understand the literal meaning of any spoken language that you hear. You also understand any spoken language that you hear. You also understand any written language that you see, but you must be touching the surface of which the words are written. It takes about 1 minute to read one page of text. This spell doesn�t decode secret messages in a text or glyph, such as an arcane sigil, that isn�t part of a written language.'
      }
      {
        name: "Compulsion"
        level: 4
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 30
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Bard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 224
        descriptions:
          main: 'Creatures of your choice that you can see within range and that can hear you must make a Wisdom saving throw. A target automatically succeeds on this saving throw if it can�t be charmed. On a failed save, a target is affected by this spell. Until the spell ends, you can use a bonus action on each of your turns to designate a direction that is horizontal to you. Each affected target must use as much of its movement as possible to move in that direction on its next turn. It can take its action before it moves. After moving in this way, it can make another Wisdom saving throw to try to end the effect. A target isn�t compelled to move into an obviously deadly hazard, such as a fire pit, but it will provoke opportunity attacks to move in the designated direction.'
      }
      {
        name: "Cone of Cold"
        level: 5
        school: 'Evocation'
        castingTime: '1 Action'
        range: 0
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a small crystal or glass cone'
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 224
        descriptions:
          main: 'A blast of cold air erupts from your hands. Each creature in a 60-foot cone must make a Constitution saving throw. A creature takes 8d8 cold damage on a failed save, or half as much damage on a successful one. A creature killed by this spell becomes a frozen statue until it thaws.'
          level: 'When you cast this spell using a spell slot of 6th level or higher, the damage increases by 1d8 for each slot level above 5th.'
      }
      {
        name: "Confusion"
        level: 4
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 90
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'three nut shells'
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 224
        descriptions:
          main: 'This spell assaults and twists creatures� minds, spawning delusions and provoking uncontrolled actions. Each creature in a 10-foot-radius sphere centered on a point you choose within range must succeed on a Wisdom saving throw when you cast this spell or be affected by it. An affected target can�t take reactions and must roll a d10 at the start of each of its turns to determine its behavior for that turn. d10 Behavior 1 The creature uses all its movement to move in a random direction. To determine the direction, roll a d8 and assign a direction to each die face. The creature doesn�t take an action this turn. 2-6 The creature doesn�t move or take actions this turn. 7-8 The creature uses its action to make a melee attack against a randomly determined creature within its reach. If there is no creature within its reach, the creature does nothing ths turn. 9-10 The creature can act and move normally. At the end of its turns, an affected target can make a Wisdom saving throw. It it succeeds, this effect ends for that target.'
          level: 'When you cast this spell using a spell slot of 5th level or higher, the radius of the sphere increases by 5 feet for each slot above 4th.'
      }
      {
        name: "Conjure Animals"
        level: 3
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 60
        duration: 'Concentration, up to 1 hour'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Ranger' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 225
        descriptions:
          main: 'You summon fey spirits that take the form of beasts and appear in unoccupied spaces that you can see within range. Choose one of the following options for what appears: � One beast of challenge rating 2 or lower � Two beasts of challenge rating 1 or lower � Four beasts of challenge rating 1/2 or lower � Eight beasts of challenge rating 1/4 or lower Each beast is also considered fey, and it disappears when it drops to 0 hit points or when the spell ends. The summoned creatures are friendly to you and your companions. Roll initiative for the summoned creatures as a group, which has its own turns. They obey any verbal commands that you issue to them (no action required by you). If you don�t issue any commands to them, they defend themselves from hostile creatures, but otherwise take no actions. The DM has the creatures� statistics.'
          level: 'When you cast this spell using certain higher-level spell slots, you choose one of the summoning options above, and more creatures appear: twice as many with a 5th-level slot, three times as many with a 7th-level slot, and four times as many with a 9th-level slot.'
      }
      {
        name: "Conjure Barrage"
        level: 3
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 0
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'one piece of ammunition or a thrown weapon'
        classes: [
          Class.findOne({ name: 'Ranger' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 225
        descriptions:
          main: 'You throw a nonmagical weapon or fire a piece of nonmagical ammunition into the air to create a cone of identical weapons that shoot forward and then disappear. Each creature in a 60-foot cone must succeed on a Dexterity saving throw. A creature takes 3d8 damage on a failed save, or half as much damage on a successful one. The damage type is the same as that of the weapon or ammunition used as a component.'
      }
      {
        name: "Conjure Celestial"
        level: 7
        school: 'Conjuration'
        castingTime: '1 Minute'
        range: 90
        duration: 'Concentration, up to 1 hour '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Cleric' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 225
        descriptions:
          main: 'You summon a celestial of challenge rating 4 or lower, which appears in an unoccupied space that you can see within range. The celestial disappears when it drops to 0 hit points or when the spell ends. The celestial is friendly to you and your companions for the duration. Roll initiative for the celestial, which has its own turns. It obeys any verbal commands that you issue to it (no action required by you), as long as they don�t violate its alignment. If you don�t issue any commands to the celestial, it defends itself from hostile creatures but otherwise takes no actions The DM has the celestial�s statistics.'
          level: 'When you cast this spell using a 9th-level spell slot, you summon a celestial of challenge rating 5 or lower.'
      }
      {
        name: "Conjure Elemental"
        level: 5
        school: 'Conjuration'
        castingTime: '1 Minute'
        range: 90
        duration: 'Concentration, up to 1 hour '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'burning incense for air, soft clay for earth, sulfur and phosphorus for fire, or water and sand for water'
        classes: [
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 225
        descriptions:
          main: 'You call forth an elemental servant. Choose an area of air, earth, fire, or water that fills a 10-foot cube within range. An elemental of challenge rating 5 or lower appropriate to the area you chose appears in an unoccupied space within 10 feet of it. For example, a fire elemental emerges from a bonfire, and an earth elemental rises up from the ground. The elemental disappears when it drops to 0 hit points or when the spell ends. The elemental is friendly to you and your companions for the duration. Roll initiative for the elemental, which has its own turns. It obeys any verbal commands that you issue to it (no action required by you). If you don�t issue any commands to the elemental, it defends itself from hostile creatures but otherwise takes no actions. If your concentration is broken, the elemental doesn�t disappear. Instead, you lose control of the elemental, it becom es hostile toward you and your companions, and it might attack. An uncontrolled elemental can�t be dismissed by you, and it disappears 1 hour after you summoned it. The DM has the elemental�s statistics.'
          level: 'When you cast this spell using a spell slot of 6th level or higher, the challenge rating increases by 1 for each slot level above 5th.'
      }
      {
        name: "Conjure Fey"
        level: 6
        school: 'Conjuration'
        castingTime: '1 Minute'
        range: 90
        duration: 'Concentration, up to 1 hour'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Warlock' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 226
        descriptions:
          main: 'You summon a fey creature of challenge rating 6 or lower, or a fey spirit that takes the form of a beast of challenge rating 6 or lower. It appears in an unoccupied space that you can see within range. The fey creature disappears when it drops to 0 hit points or when the spell ends. The fey creature is friendly to you and your companions for the duration. Roll initiative for the creature, which has its own turns. It obeys any verbal commands that you issue to it (no action required by you), as long as they don�t violate its alignment. If you don�t issue any commands to the fey creature, it defends itself from hostile creatures but otherwise takes no actions. If your concentration is broken, the fey creature doesn�t disappear. Instead, you lose control of the fey creature, it becomes hostile toward you and your companions, and it might attack. An uncontrolled fey creature can�t be dismissed by you, and it disappears 1 hour after you summoned it. The DM has the fey creature�s statistics'
          level: 'When you cast this spell using a spell slot of 7th level or higher, the challenge rating increases by 1 for each slot level above 6th.'
      }
      {
        name: "Conjure Minor Elementals"
        level: 4
        school: 'Conjuration'
        castingTime: '1 Minute'
        range: 90
        duration: 'Concentration, up to 1 hour'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 226
        descriptions:
          main: 'You summon elementals that appear in unoccupied spaces that you can see within range. You choose one the following options for what appears:
-One elemental of challenge rating 2 or lower
-Two elementals of challenge rating 1 or lower
-Four elementals of challenge rating 1/2 or lower
-Eight elementals of challenge rating 1/4 or lower. An elemental summoned by this spell disappears when it drops to 0 hit points or when the spell ends. The summoned creatures are friendly to you and your companions. Roll initiative for the summoned creatures as a group, which has its own turns. They obey any verbal commands that you issue to them (no action required by you). If you don�t issue any commands to them, they defend themselves from hostile creatures, but otherwise take no actions. The DM has the creatures� statistics.'
          level: 'When you cast this spell using certain higher-level spell slots, you choose one of the summoning options above, and more creatures appear: twice as many with a 6th-level slot and three times as many with an 8th-level slot.'
      }
      {
        name: "Conjure Volley"
        level: 5
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 150
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'one piece of ammunition or one thrown weapon'
        classes: [
          Class.findOne({ name: 'Ranger' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 226
        descriptions:
          main: 'You fire a piece of nonmagical ammunition from a ranged weapon or throw a nonmagical w eapon into the air and choose a point within range. Hundreds of duplicates of the ammunition or weapon fall in a volley from above and then disappear. Each creature in a 40-foot-radius. 20-foot-high cylinder centered on that point must make a Dexterity saving throw. A creature takes 8d8 damage on a failed save, or half as much damage on a successful one. The damage type is the same as that of the ammunition or weapon.'
      }
      {
        name: "Conjure Woodland Beings"
        level: 4
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 60
        duration: 'Concentration, up to 1 hour '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'one holly berry per creature summoned'
        classes: [
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Ranger' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 226
        descriptions:
          main: 'You summon fey creatures that appear in unoccupied spaces that you can see within range. Choose one of the following options for what appears: � One fey creature of challenge rating 2 or lower � Two fey creatures of challenge rating 1 or lower � Four fey creatures of challenge rating 1/2 or lower � Eight fey creatures of challenge rating 1/4 or lower A summoned creature disappears when it drops to 0 hit points or when the spell ends. The summoned creatures are friendly to you and your companions. Roll initiative for the summoned creatures as a group, which have their own turns. They obey any verbal commands that you issue to them (no action required by you). If you don�t issue any commands to them, they defend themselves from hostile creatures, but otherwise take no actions. The DM has the creatures� statistics.'
          level: 'When you cast this spell using certain higher-level spell slots, you choose one of the summoning options above, and more creatures appear: twice as many with a 6th-level slot and three times as many with an 8th-level slot.'
      }
      {
        name: "Contact Other Plane (Ritual)"
        level: 5
        school: 'Divination'
        castingTime: '1 Minute'
        range: 0
        duration: '1 Minute'
        components: ['Verbal']
        classes: [
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 226
        descriptions:
          main: 'You mentally contact a demigod, the spirit of a long-dead sage, or some other mysterious entity from another plane. Contacting this extraplanar intelligence can strain or even break your mind. When you cast this spell, make a DC 15 Intelligence saving throw. On a failure, you take 6d6 psychic damage and are insane until you finish a long rest. While insane, you can�t take actions, can�t understand what other creatures say, can�t read, and speak only in gibberish. A greater restoration spell cast on you ends this effect. On a successful save, you can ask the entity up to five questions. You must ask your questions before the spell ends. The DM answers each question with one word, such as ?yes,? ?no,? ?maybe,? ?never,? ?irrelevant,? or ?unclear? (if the entity doesn�t know the answer to the question). If a one-word answer w ould be misleading, the DM might instead offer a short phrase as an answer.'
      }
      {
        name: "Contagion"
        level: 5
        school: 'Necromancy'
        castingTime: '1 Action'
        range: 5
        duration: '7 Days'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Druid' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 227
        descriptions:
          main: 'Your touch inflicts disease. Make a melee spell attack against a creature within your reach. On a hit, you afflict the creature with a disease of your choice from any of the ones described below. At the end of each of the target�s turns, it must make a Constitution saving throw. After failing three of these saving throws, the disease�s effects last for the duration, and the creature stops making these saves. After succeeding on three of these saving throws, the creature recovers from the disease, and the spell ends. Since this spell induces a natural disease in its target, any effect that removes a disease or otherwise ameliorates a disease�s effects apply to it. Blinding Sickness. Pain grips the creature�s mind, and its eyes turn milky white. The creature has disadvantage on Wisdom checks and Wisdom saving throws and is blinded. Filth Fever. A raging fever sweeps through the creature�s body. The creature has disadvantage on Strength checks, Strength saving throws, and attack rolls that use Strength. Flesh Rot. The creature�s flesh decays. The creature has disadvantage on Charisma checks and vulnerability to all damage. Mindfire. The creature�s mind becomes feverish. The creature has disadvantage on Intelligence checks and Intelligence saving throws, and the creature behaves as if under the effects of the confusion spell during combat. Seizure. The creature is overcome with shaking. The creature has disadvantage on Dexterity checks, Dexterity saving throws, and attack rolls that use Dexterity. Slimy Doom. The creature begins to bleed uncontrollably. The creature has disadvantage on Constitution checks and Constitution saving throws. In addition, whenever the creature takes damage, it is stunned until the end of its next turn.'
      }
      {
        name: "Contingency"
        level: 6
        school: 'Evocation'
        castingTime: '1 Minute'
        range: 0
        duration: '1 Days'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a statuette of yourself carved from ivory and decorated with gems worth at least 1,500 gp'
        classes: [
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 227
        descriptions:
          main: 'Choose a spell of 5th level or lower that you can cast, that has a casting time of 1 action, and that can target you. You cast that spell?called the contingent spell?as part of casting contingency, expending spell slots for both, but the contingent spell doesn�t come into effect. Instead, it takes effect when a certain circumstance occurs. You describe that circumstance when you cast the two spells. For example, a contingency cast with water breathing might stipulate that water breathing comes into effect when you are engulfed in water or a similar liquid. The contingent spell takes effect immediately after the circumstance is met for the first time, whether or not you want it to. and then contingency ends. The contingent spell takes effect only on you, even if it can normally target others. You can use only one contingency spell at a time. If you cast this spell again, the effect of another contingency spell on you ends. Also, contingency ends on you if its material component is ever not on your person.'
      }
      {
        name: "Continual Flame"
        level: 2
        school: 'Evocation'
        castingTime: '1 Action'
        range: 5
        duration: 'Until dispelled'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'ruby dust worth 50 gp, which the spell consumes'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 227
        descriptions:
          main: 'A flame, equivalent in brightness to a torch, springs forth from an object that you touch. The effect looks like a regular flame, but it creates no heat and doesn�t use oxygen. A continual flame can be covered or hidden but not smothered or quenched.'
      }
      {
        name: "Control Water"
        level: 4
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 300
        duration: 'Concentration, up to 10 minutes '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a drop of water and a pinch of dust'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 227
        descriptions:
          main: 'Until the spell ends, you control any freestanding water inside an area you choose that is a cube up to 100 feet on a side. You can choose from any of the following effects when you cast this spell. As an action on your turn, you can repeat the same effect or choose a different one. Flood. You cause the water level of all standing water in the area to rise by as much as 20 feet. If the area includes a shore, the flooding water spills over onto dry land. If you choose an area in a large body of water, you instead create a 20-foot tall wave that travels from one side of the area to the other and then crashes down. Any Huge or smaller vehicles in the wave�s path are carried with it to the other side. Any Huge or smaller vehicles struck by the wave have a 25 percent chance of capsizing. The water level remains elevated until the spell ends or you choose a different effect. If this effect produced a wave, the wave repeats on the start of your next turn while the flood effect lasts. Part Water. You cause water in the area to move apart and create a trench. The trench extends across the spell�s area, and the separated water forms a wall to either side. The trench remains until the spell ends or you choose a different effect. The water then slowly fills in the trench over the course of the next round until the normal water level is restored. Redirect Flow. You cause flowing water in the area to move in a direction you choose, even if the water has to flow over obstacles, up walls, or in other unlikely directions. The water in the area moves as you direct it, but once it moves beyond the spell�s area, it resumes its flow based on the terrain conditions. The water continues to move in the direction you chose until the spell ends or you choose a different effect. Whirlpool. This effect requires a body of water at least 50 feet square and 25 feet deep. You cause a whirlpool to form in the center of the area. The whirlpool forms a vortex that is 5 feet wide at the base, up to 50 feet wide at the top, and 25 feet tall. Any creature or object in the water and within 25 feet of the vortex is pulled 10 feet toward it. A creature can swim away from the vortex by making a Strength (Athletics) check against your spell save DC. When a creature enters the vortex for the first time on a turn or starts its turn there, it must make a Strength saving throw. On a failed save, the creature takes 2d8 bludgeoning damage and is caught in the vortex until the spell ends. On a successful save, the creature takes half damage, and isn�t caught in the vortex. A creature caught in the vortex can use its action to try to swim away from the vortex as described above, but has disadvantage on the Strength (Athletics) check to do so. The first time each turn that an object enters the vortex, the object takes 2d8 bludgeoning damage'
      }
      {
        name: "Control Weather"
        level: 8
        school: 'Transmutation'
        castingTime: '1 Minutes'
        range: 0
        duration: 'Concentration, up to 8 hours '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'burning incense and bits of earth and wood mixed in water'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Druid' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 228
        descriptions:
          main: 'You take control of the weather within 5 miles of you for the duration. You must be outdoors to cast this spell. Moving to a place where you don�t have a clear path to the sky ends the spell early. When you cast the spell, you change the current weather conditions, which are determined by the DM based on the climate and season. You can change precipitation, temperature, and wind. It takes 1d4 x 10 minutes for the new conditions to take effect. Once they do so, you can change the conditions again. When the spell ends, the weather gradually returns to normal. When you change the weather conditions, find a current condition on the following tables and change its stage by one, up or down. When changing the wind, you can change its direction. Precipitation Stage 1 � Clear, Stage 2 � Light clouds, Stage 3 � Overcast or ground fog, Stage 4 � Rain, hail or snow, Stage 5 � Torrential rain, driving hail or blizzard Temperature Stage 1 � Unbearable heat, Stage 2 � Hot, Stage 3 � Warm, Stage 4 � Cool, Stage 5 � Cold, Stage 6 � Arctic cold Wind Stage 1 � Calm, Stage 2 � Moderate wind, Stage 3 � Strong wind, Stage 4 � Gale, Stage 5 � Storm'
      }
      {
        name: "Cordon of Arrows"
        level: 2
        school: 'Transmutation'
        castingTime: '1 Action'
        range: -5
        duration: '8 Hours'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'four or more arrows or bolts'
        classes: [
          Class.findOne({ name: 'Ranger' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 228
        descriptions:
          main: 'You plant four pieces of nonmagical ammunition � arrows or crossbow bolts � in the ground within range and lay magic upon them to protect an area. Until the spell ends, whenever a creature other than you comes within 30 feet of the ammunition for the first time on a turn or ends its turn there, one piece of ammunition flies up to strike it. The creature must succeed on a Dexterity saving throw or take 1d6 piercing damage. The piece of ammunition is then destroyed. The spell ends when no ammunition remains. When you cast this spell, you can designate any creatures you choose, and the spell ignores them'
          level: 'When you cast this spell using a spell slot of 3rd level or higher, the amount of ammunition that can be affected increases by two for each slot level above 2nd'
      }
      {
        name: "Counterspell"
        level: 3
        school: 'Abjuration'
        castingTime: 'Special'
        range: 60
        duration: 'Instanteneous'
        components: ['Verbal']
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 228
        descriptions:
          main: 'Reaction: When you see a creature within 60 feet of you casting a spell You attempt to interrupt a creature in the process of casting a spell. If the creature is casting a spell of 3rd level or lower, its spell fails and has no effect. If it is casting a spell of 4th level or higher, make an ability check using your spellcasting ability. The DC equals 10+ the spell�s level. On a success, the creature�s spell fails and has no effect'
          level: 'When you cast this spell using a spell slot of 4th leve lor higher, the interrupted spell has no effect if its level is less than or equal to the leve lof the spell slot you used.'
      }
      {
        name: "Create Food and Water"
        level: 3
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 30
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Paladin' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 229
        descriptions:
          main: 'You create 45 pounds of food and 30 gallons of water on the ground or in containers within range, enough to sustain up to fifteen humanoids or five steeds for 24 hours. The food is bland but nourishing, and spoils if uneaten after 24 hours. The water is clean and doesn�t go bad.'
      }
      {
        name: "Create or Destroy Water"
        level: 1
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 30
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a drop of water if creating water or a few grains of sand if destroying it'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Druid' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 229
        descriptions:
          main: 'You either create or destroy water. Create Water. You create up to 10 gallons of clean water within range in an open container. Alternatively, the water falls as rain in a 30-foot cube within range, extinguishing exposed flames in the area. Destroy Water. You destroy up to 10 gallons of water in an open container within range. Alternatively, you destroy fog in a 30-foot cube within range.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, you create or destroy 10 additional gallons of water, or the size of the cube increases by 5 feet, for each slot level above 1st.'
      }
      {
        name: "Create Undead"
        level: 6
        school: 'Necromancy'
        castingTime: '1 Minute'
        range: 10
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'one clay pot filled with grave dirt, one clay pot filled with brackish water, and one 150 gp black onyx stone for each corpse'
        classes: [
          Class.findOne({ name: 'Cleric' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 229
        descriptions:
          main: 'You can cast this spell only at night. Choose up to three corpses of Medium or Small humanoids within range. Each corpse becomes a ghoul under your control. (The DM has game statistics for these creatures.) As a bonus action on each of your turns, you can mentally command any creature you animated with this spell if the creature is within 120 feet of you (if you control multiple creatures, you can command any or all of them at the same time, issuing the same command to each one). You decide what action the creature w ill take and where it will move during its next turn, or you can issue a general command, such as to guard a particular chamber or corridor. If you issue no commands, the creature only defends itself against hostile creatures. Once given an order, the creature continues to follow it until its task is complete. The creature is under your control for 24 hours, after which it stops obeying any command you have given it. To maintain control of the creature for another 24 hours, you must cast this spell on the creature before the current 24-hour period ends. This use of the spell reasserts your control over up to three creatures you have animated with this spell, rather than animating new ones.'
          level: 'When you cast this spell using a 7th-level spell slot, you can animate or reassert control over four ghouls. When you cast this spell using an 8th-level spell slot, you can animate or reassert control over five ghouls or two ghasts or wights. When you cast this spell using a 9th-level spell slot, you can animate or reassert control over six ghouls, three ghasts or wights, or two mummies.'
      }
      {
        name: "Creation"
        level: 5
        school: 'Illusion'
        castingTime: '1 Minute'
        range: 30
        duration: 'Special'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a tiny piece of matter of the same type of the item you plan to create'
        classes: [
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 229
        descriptions:
          main: 'You pull wisps of shadow material from the Shadowfell to create a nonliving object of vegetable matter within range: soft goods, rope, wood, or something similar. You can also use this spell to create mineral objects such as stone, crystal, or metal. The object created must be no larger than a 5-foot cube, and the object must be of a form and material that you have seen before. The duration depends on the object�s material. If the object is composed of multiple materials, use the shortest duration. Material � Duration Vegetable matter � 1 day Stone/crystal � 12 hours Precious metals � 1 hour Gems � 10 minutes Adamantine/Mithral � 1 minute Using any material created by this spell as another spell�s material component causes that spell to fail.'
          level: 'When you cast this spell using a spell slot of 6th level or higher, the cube increases by 5 feet for each slot level above 5th.'
      }
      {
        name: "Crown of Madness"
        level: 2
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 120
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({ name: 'Bard' })._id
          Class.findOne({ name: 'Sorcerer' })._id
          Class.findOne({ name: 'Warlock' })._id
          Class.findOne({ name: 'Wizard' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 229
        descriptions:
          main: 'One humanoid of your choice that you can see within range must succeed on a W isdom saving throw or become charmed by you for the duration. While the target is charmed in this way, a twisted crown of jagged iron appears on its head, and a madness glows in its eyes. The charmed target must use its action before moving on each of its turns to make a melee attack against a creature other than itself that you mentally choose. The target can act normally on its turn if you choose no creature or if none are within its reach. On your subsequent turns, you must use your action to maintain control over the target, or the spell ends. Also, the target can make a Wisdom saving throw at the end of each of its turns. On a success, the spell ends.'
      }
      {
        name: "Crusader�s Mantle"
        level: 3
        school: 'Evocation'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal']
        classes: [
          Class.findOne({ name: 'Paladin' })._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 230
        descriptions:
          main: 'Holy power radiates from you in an aura with a 30-foot radius, awakening boldness in friendly creatures. Until the spell ends, the aura moves with you, centered on you. While in the aura, each nonhostile creature in the aura (including you) deals an extra 1d4 radiant damage when it hits with a weapon attack.'
      }
      {
        name: "Cure Wounds"
        level: 1
        school: 'Evocation'
        castingTime: '1 Action'
        range: 5
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Paladin'})._id
          Class.findOne({name: 'Ranger'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 230
        descriptions:
          main: 'A creature you touch regains a number of hit points equal to 1d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, the healing increases by 1d8 for each slot level above 1st.'
      }
      {
        name: "Dancing Lights"
        level: 0
        school: 'Evocation'
        castingTime: '1 Action'
        range: 120
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a bit of phosphorous or wychwood, or a glowworm'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 230
        descriptions:
          main: 'You create up to four torch-sized lights within range, making them appear as torches, lanterns, or glowing orbs that hover in the air for the duration. You can also combine the four lights into one glowing vaguely humanoid form of Medium size. Whichever form you choose, each light sheds dim light in a 10-foot radius. As a bonus action on your turn, you can move the lights up to 60 feet to a new spot within range. A light must be within 20 feet of another light created by this spell, and a light winks out if it exceeds the spell�s range.'
      }
      {
        name: "Darkness"
        level: 2
        school: 'Evocation'
        castingTime: '1 Action'
        range: 60
        duration: 'Concentration, up to 10 minutes '
        components: ['Verbal', 'Material']
        material: 'bat fur and a drop of pitch or piece of coal'
        classes: [
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 230
        descriptions:
          main: 'Magical darkness spreads from a point you choose within range to fill a 15-foot radius sphere for the duration.
The darkness spreads around corners. A creature with darkvision can�t see through this darkness, and nonmagical light can�t illuminate it.
If the point you choose is on an object you are holding or one that isn�t being worn or carried, the darkness emanates from the object and moves with it. Completely covering the source of the darkness with an opaque object, such as a bowl or a helm, blocks the darkness.
If any of this spell�s area overlaps with an area of light created by a spell of 2nd level or lower, the spell that created the light is dispelled.'
      }
      {
        name: "Darkvision"
        level: 2
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 5
        duration: '8 Hours'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'either a pinch of dried carrot or an agate'
        classes: [
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Ranger'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 230
        descriptions:
          main: 'You touch a willing creature to grant it the ability to see in the dark.
For the duration, that creature has darkvision out to a range of 60 feet.'
      }
      {
        name: "Daylight"
        level: 3
        school: 'Evocation'
        castingTime: '1 Action'
        range: 60
        duration: '1 Hour'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Paladin'})._id
          Class.findOne({name: 'Ranger'})._id
          Class.findOne({name: 'Sorcerer'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 230
        descriptions:
          main: 'A 60-foot-radius sphere of light spreads out from a point you choose within range. The sphere is bright light and sheds dim light for an additional 60 feet. If you chose a point on an object you are holding or one that isn�t being worn or carried, the light shines from the object with and moves with it. Completely covering the affected object with an opaque object, such as a bowl or a hel, blocks the light. If any of this spell�s area overlaps with an area of darkness created by a spell of 3rd level or lower, the spell that created the darkness is dispelled.'
      }
      {
        name: "Death Ward"
        level: 4
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 5
        duration: '8 Hours'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Paladin'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 230
        descriptions:
          main: 'You touch a creature and grant it a measure of protection from death. The first time the target would drop to 0 hit points as a result of taking damage, the target instead drops to 1 hit point, and the spell ends. If the spell is still in effect when the target is subjected to an effect that would kill it instantaneously without dealing damage, that effect is instead negated against the target, and the spells ends.'
      }
      {
        name: "Delayed Blast Fireball"
        level: 7
        school: 'Evocation'
        castingTime: '1 Action'
        range: 150
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a tine ball of bat guano and sulfur'
        classes: [
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 230
        descriptions:
          main: 'A beam of yellow light flashes from your pointing finger, then condenses to linger at a chosen point within range as a glowing bead for the duration. When the spell ends, either because your concentration is broken or because you decide to end it, the bead blossoms with a low roar into an explosion of flame that spreads around corners. Each creature in a 20-foot-radius sphere centered on that point must make a Dexterity saving throw. A creature takes fire damage equal to the total accumulated damage on a failed save, or half as much damage on a successful one. The spell�s base damage is 12d6. If at the end of your turn the bead has not yet detonated, the damage increases by 1d6. If the glowing bead is touched before the interval has expired, the creature touching it must make a Dexterity saving throw. On a failed save, the spell ends immediately, causing the bead to erupt in flame. On a successful save, the creature can throw the bead up to 40 feet. When it strikes a creature or a solid object, the spell ends, and the bead explodes. The fire damages objects in the area and ignites flammable objects that aren�t being worn or carried.'
          level: 'When you cast this spell using a spell slot of 8th level or higher, the base damage increases by 1d6 for each slot level above 7th.'
      }
      {
        name: "Demiplane"
        level: 8
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 60
        duration: '1 Hour'
        components: ['Somatic']
        classes: [
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 231
        descriptions:
          main: 'You create a shadowy door on a flat solid surface that you can see within range. The door is large enough to allow Medium creatures to pass through unhindered. When opened, the door leads to a demiplane that appears to be an empty room 30 feet in each dimension, made of wood or stone. When the spell ends, the door disappears, and any creatures or objects inside the demiplane remain trapped there, as the door also disappears from the other side. Each time you cast this spell, you can create a new demiplane, or have the shadowy door connect to a demiplane you created with a previous casting of this spell. Additionally, if you know the nature and contents of a demiplane created by a casting of this spell by another creature, you can have the shadowy door connect to its demiplane instead.'
      }
      {
        name: "Destructive Wave"
        level: 5
        school: 'Evocation'
        castingTime: '1 Action'
        range: 0
        duration: 'Instanteneous'
        components: ['Verbal']
        classes: [
          Class.findOne({name: 'Paladin'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 231
        descriptions:
          main: 'You strike the ground, creating a burst of divine energy that ripples outward from you. Each creature you choose within 30 feet of you must succeed on a Constitution saving throw or take 5d6 thunder damage, as well as 5d6 radiant or necrotic damage (your choice), and be knocked prone. A creature that succeeds on its saving throw takes half as much damage and isn�t knocked prone.'
      }
      {
        name: "Detect Evil and Good"
        level: 1
        school: 'Divination'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 10 minutes'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Paladin'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 231
        descriptions:
          main: 'For the duration, you know if there is an aberration, celestial, elemental, fey, fiend, or undead within 30 feet of you, as well as where the creature is located. Similarly, you know if there is a place of object within 30 feet of you that has been magically consecrated or desecrated. The spell can penetrate most barriers, but it is blocked by 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt.'
      }
      {
        name: "Detect Magic (Ritual)"
        level: 1
        school: 'Divination'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 10 minutes '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Paladin'})._id
          Class.findOne({name: 'Ranger'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 231
        descriptions:
          main: 'For the duration, you sense the presence of magic within 30 feet of you. If you sense magic in this way, you can use your action to see a faint aura around any visible creature or object in the area that bears magic, and you learn its school of magic, if any. The spell can penetrate most barriers, but is blocked by 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt.'
      }
      {
        name: "Detect Poison and Disease"
        level: 1
        school: 'Divination'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 10 minutes '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a yew leaf'
        classes: [
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Paladin'})._id
          Class.findOne({name: 'Ranger'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 231
        descriptions:
          main: 'For the duration, you can sense the presence and location of poisons, poisonous creatures, and diseases within 30 feet of you. You also identify the kind of poison, poisonous creature, or disease in each case. The spell can penetrate most barriers, but is blocked by 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt.'
      }
      {
        name: "Detect Thoughts"
        level: 2
        school: 'Divination'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a copper piece'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 231
        descriptions:
          main: 'For the duration, you can read the thoughts of certain creatures. When you cast the spell and as your action on each turn until the spell ends, you can focus your mind on any one creature that you can see within 30 feet of you. If the creature you choose has an Intelligence of 3 or lower or doesn�t speak any language, the creature is unaffected. You initially learn the surface thoughts of the creature � what is most on its mind in that moment. As an action, you can either shift your attention to another creature�s thoughts or attempt to probe deeper into the same creature�s mind. If you probe deeper, the target must make a Wisdom saving throw. If it fails, you gain insight into its reasoning (if any), its emotional state, and something that looms large in its mind (such as something it worries over, loves, or hates). If it succeeds, the spell ends. Either way, the target knows that you are probing into its mind, and unless you shift your attention to another creatures thoughts, the creature can use its action on its turn to make an Intelligence check contested by your Intelligence check'
      }
      {
        name: "Dimension Door"
        level: 4
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 500
        duration: 'Instanteneous'
        components: ['Verbal']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 233
        descriptions:
          main: 'You teleport yourself from your current location to any other spot within range. You arrive at exactly the spot desired. It can be a place you can see, one you can visualize, or one you can describe by stating distance and direction, such as ?200 feet straight downward? or ?upward to the northwest at a 45-degree angle, 300 feet.? You can bring along objects as long as their weight doesn�t exceed what you can carry. You can also bring one willing creature of your size or smaller who is carrying gear up to its carrying capacity. The creature must be within 5 feet of you when you cast this spell. If you would arrive in a place already occupied by an object or a creature, you and any creature traveling with you each take 4d6 force damage, and the spell fails to teleport you.'
      }
      {
        name: "Disguise Self"
        level: 1
        school: 'Illusion'
        castingTime: '1 Action'
        range: 0
        duration: '1 Hour'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 233
        descriptions:
          main: 'You make yourself � ?including your clothing, armor, weapons, and other belongings on your person � ?look different until the spell ends or until you use your action to dismiss it.
You can seem 1 foot shorter or taller and can appear thin, fat, or in between. You can�t change your body type, so you must adopt a form that has the same basic arrangement of limbs. Otherwise, the extent of the illusion is up to you.
The changes wrought by this spell fail to hold up to physical inspection. For example, if you use this spell to add a hat to your outfit, objects pass through the hat, and anyone who touches it would feel nothing or would feel your head and hair. If you use this spell to appear thinner than you are, the hand of som eone who reaches out to touch you would bump into you while it was seemingly still in midair.

To discern that you are disguised, a creature can use its action to inspect your appearance and must succeed on an Intelligence (Investigation) check against your spell save DC.'
      }
      {
        name: "Disintegrate"
        level: 6
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 60
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a lodestone and a pinch of dust'
        classes: [
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 233
        descriptions:
          main: 'A thin green ray springs from your pointing finger to a target that you can see within range. The target can be a creature, an object, or a creation of magical force, such as the wall created by wall of force. A creature targeted by this spell must make a Dexterity saving throw. On a failed save, the target takes 10d6 + 40 force damage. If this damage reduces the target to 0 hit points, it is disintegrated. A disintegrated creature and everything it is wearing and carrying, except magic items, are reduced to a pile of fine gray dust. The creature can be restored to life only by means of a true resurrection or a wish spell. This spell automatically disintegrates a Large or smaller nonmagical object or a creation of magical force. If the target is a Huge or larger object or creation of force, this spell disintegrates a 10-foot-cube portion of it. A magic item is unaffected by this spell.'
          level: 'When you cast this spell using a spell slot of 7th level or higher, the damage increases by 3d6 for each slot level above 6th'
      }
      {
        name: "Dispel Evil and Good"
        level: 5
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'holy water or powdered silver and iron'
        classes: [
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Paladin'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 233
        descriptions:
          main: 'Shimmering energy surrounds and protects you from fey, undead, and creatures originating from beyond the Material Plane. For the duration, celestials, elementals, fey, fiends, and undead have disadvantage on attack rolls against you. You can end the spell early by using either of the following special functions. Break Enchantment. As your action, you touch a creature you can reach that is charmed, frightened, or possessed by a celestial, an elemental, a fey, a fiend, or an undead. The creature you touch is no longer charmed, frightened, or possessed by such creatures. Dismissal. As your action, make a melee spell attack against a celestial, an elemental, a fey, a fiend, or an undead you can reach. On a hit, you attempt to drive the creature back to its home plane. The creature must succeed on a Charisma saving throw or be sent back to its home plane (if it isn�t there already). If they aren�t on their home plane, undead are sent to the Shadowfell, and fey are sent to the Feywild.'
      }
      {
        name: "Dispel Magic"
        level: 3
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 120
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Paladin'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 234
        descriptions:
          main: 'Choose any creature, object, or magical effect within range. Any spell of 3rd level or lower on the target ends. For each spell of 4th level or higher on the target, make an ability check using your spellcasting ability. The DC equals 10 + the spell�s level. On a successful check, the spell ends. '
          level: 'When you cast this spell using a spell slot of 4th level or higher, you automatically end the effects of a spell on the target if the spell�s level is equal to or less than the level of the spell slot you used.'
      }
      {
        name: "Dissonant Whispers"
        level: 1
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 60
        duration: 'Instanteneous'
        components: ['Verbal']
        classes: [
          Class.findOne({name: 'Bard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 234
        descriptions:
          main: 'You whisper a discordant melody that only one creature of your choice within range can hear, wracking it with terrible pain. The target must make a Wisdom saving throw. On a failed save, it takes 3d6 psychic damage and must immediately use its reaction , if available, to move as far as its speed allows away from you. The creature doesn�t move into obviously dangerous ground, such as a fire or a pit. On a successful save, the target takes half as much damage and doesn�t have to move away. A deafened creature automatically succeeds on the save.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.'
      }
      {
        name: "Divination (Ritual)"
        level: 4
        school: 'Divination'
        castingTime: '1 Action'
        range: 0
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'incense and a sacrificial offering appropriate to your religion, together worth at least 25 gp, which the spell consumes'
        classes: [
          Class.findOne({name: 'Cleric'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 234
        descriptions:
          main: 'Your magic and an offering put you in contact with a god or a god�s servants. You ask a single question concerning a specific goal, event, or activity to occur within 7 days. The DM offers a truthful reply. The reply might be a short phrase, a cryptic rhyme, or an omen. The spell doesn�t take into account any possible circumstances that might change the outcome, such as the casting of additional spells or the loss or gain of a companion. If you cast this spell two or more times before finishing your next long rest, there is a cumulative 25 percent chance for each casting after the first that you get a random reading. The DM makes this roll in secret.'
      }
      {
        name: "Divine Favor"
        level: 1
        school: 'Evocation'
        castingTime: '1 Bonus Action'
        range: 0
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Paladin'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 234
        descriptions:
          main: 'Your prayer empowers you with divine radiance. Until the spell ends, your weapon attacks deal and extra 1d4 radiant damage on a hit.'
      }
      {
        name: "Divine Word"
        level: 7
        school: 'Evocation'
        castingTime: '1 Bonus Action'
        range: 30
        duration: 'Instanteneous'
        components: ['Verbal']
        classes: [
          Class.findOne({name: 'Cleric'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 234
        descriptions:
          main: 'You utter a divine word, imbued with the power that shaped the world at the dawn of creation. Choose any number of creatures you can see within range. Each creature that can hear you must make a Charisma saving throw. On a failed save, a creature suffers an effect based on its current hit points: � 50 hit points or fewer: deafened for 1 minute � 40 hit points or fewer: deafened and blinded for 10 minutes � 30 hit points or fewer: blinded, deafened, and stunned for 1 hour � 20 hit points or fewer: killed instantly Regardless of its current hit points, a celestial, an elemental, a fey, or a fiend that fails its save is forced back to its plane of origin (if it isn�t there already) and can�t return to your current plane for 24 hours by any means short of a wish spell.'
      }
      {
        name: "Dominate Beast"
        level: 4
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 60
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Sorcerer'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 234
        descriptions:
          main: 'You attempt to beguile a beast that you can see within range. It must succeed on a W isdom saving throw or be charmed by you for the duration. If you or creatures that are friendly to you are fighting it, it has advantage on the saving throw. While the beast is charmed, you have a telepathic link with it as long as the two of you are on the same plane of existence. You can use this telepathic link to issue commands to the creature while you are conscious (no action required), which it does its best to obey. You can specify a simple and general course of action, such as �Attack that creature,� �Run over there,� or �Fetch that object.� If the creature completes the order and doesn�t receive further direction from you, it defends and preserves itself to the best of its ability. You can use your action to take total and precise control of the target. Until the end of your next turn, the creature takes only the actions you choose, and doesn�t do anything that you don�t allow it to do. During this time, you can also cause the creature to use a reaction, but this requires you to use your own reaction as well. Each time the target takes damage, it makes a new Wisdom saving throw against the spell. If the saving throw succeeds, the spell ends.'
          level: 'When you cast this spell with a 5th-level spell slot, the duration is concentration, up to 10 minutes. When you use a 6th-level spell slot, the duration is concentration, up to 1 hour. When you use a spell slot of 7th level or higher, the duration is concentration, up to 8 hours.'
      }
      {
        name: "Dominate Monster"
        level: 8
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 60
        duration: 'Concentration, up to 1 hour '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 235
        descriptions:
          main: 'You attempt to beguile a creature that you can see within range. It must succeed on a Wisdom saving throw or be charmed by you for the duration. If you or creatures that are friendly to you are fighting it, it has advantage on the saving throw. While the creature is charmed, you have a telepathic link with it as long as the two of you are on the same plane of existence. You can use this telepathic link to issue commands to the creature while you are conscious (no action required), which it does its best to obey. You can specify a simple and general course of action, such as ?Attack that creature,? ?Run over there,? or ?Fetch that object.? If the creature completes the order and doesn�t receive further direction from you, it defends and preserves itself to the best of its ability. You can use your action to take total and precise control of the target. Until the end of your next turn, the creature takes only the actions you choose, and doesn�t do anything that you don�t allow it to do. During this time, you can also cause the creature to use a reaction, but this requires you to use your own reaction as well. Each time the target takes damage, it makes a new Wisdom saving throw against the spell. If the saving throw succeeds, the spell ends.'
          level: 'When you cast this spell with a 9th-level spell slot, the duration is concentration, up to 8 hours.'
      }
      {
        name: "Dominate Person"
        level: 5
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 60
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 235
        descriptions:
          main: 'You attempt to beguile a humanoid that you can see within range. It must succeed on a Wisdom saving throw or be charmed by you for the duration. If you or creatures that are friendly to you are fighting it, it has advantage on the saving throw. While the target is charmed, you have a telepathic link with it as long as the two of you are on the same plane of existence. You can use this telepathic link to issue commands to the creature while you are conscious (no action required), which it does its best to obey. You can specify a simple and general course of action, such as ?Attack that creature,? ?Run over there,? or ?Fetch that object.? If the creature completes the order and doesn�t receive further direction from you, it defends and preserves itself to the best of its ability. You can use your action to take total and precise control of the target. Until the end of your next turn, the creature takes only the actions you choose, and doesn�t do anything that you don�t allow it to do. During this time you can also cause the creature to use a reaction, but this requires you to use your own reaction as well. Each time the target takes damage, it makes a new Wisdom saving throw against the spell. If the saving throw succeeds, the spell ends'
          level: 'When you cast this spell using a 6th-level spell slot, the duration is concentration, up to 10 minutes. When you use a 7th-level spell slot, the duration is concentration, up to 1 hour. When you use a spell slot of 8th level or higher, the duration is concentration, up to 8 hours.'
      }
      {
        name: "Drawmij�s Instant Summon (Ritual)"
        level: 6
        school: 'Conjuration'
        castingTime: '1 Minute'
        range: 5
        duration: 'Until dispelled '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a sapphire worth 1,000 gp'
        classes: [
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 235
        descriptions:
          main: 'You touch an object weighing 10 pounds or less w hose longest dimension is 6 feet or less. The spell leaves an invisible mark on its surface and invisibly inscribes the name of the item on the sapphire you use as the material component. Each time you cast this spell, you must use a different sapphire. At any time thereafter, you can use your action to speak the item�s name and crush the sapphire. The item instantly appears in your hand regardless of physical or planar distances, and the spell ends. If another creature is holding or carrying the item, crushing the sapphire doesn�t transport the item to you, but instead you learn who the creature possessing the object is and roughly where that creature is located at that moment. Dispel magic or a similar effect successfully applied to the sapphire ends this spell�s effect.'
      }
      {
        name: "Dream"
        level: 5
        school: 'Illusion'
        castingTime: '1 Minute'
        range: 0
        duration: '8 Hours'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a handful of sand, a dab of ink, and a writing quill plucked from a sleeping bird'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 236
        descriptions:
          main: 'This spell shapes a creature�s dreams. Choose a creature known to you as the target of this spell. The target must be on the same plane of existence as you. Creatures that don�t sleep, such as elves, can�t be contacted by this spell. You, or a willing creature you touch, enters a trance state, acting as a messenger. While in the trance, the messenger is aware of his or her surroundings, but can�t take actions or move. If the target is asleep, the messenger appears in the target�s dreams and can converse with the target as long as it remains asleep, through the duration of the spell. The messenger can also shape the environment of the dream, creating landscapes, objects, and other images. The messenger can emerge from the trance at any time, ending the effect of the spell early. The target recalls the dream perfectly upon waking. If the target is awake when you cast the spell, the messenger knows it, and can either end the trance (and the spell) or wait for the target to fall asleep, at which point the messenger appears in the target�s dreams. You can make the messenger appear monstrous and terrifying to the target. If you do, the messenger can deliver a message of no more than ten words and then the target must make a Wisdom saving throw. On a failed save, echoes of the phantasmal monstrosity spawn a nightmare that lasts the duration of the target�s sleep and prevents the target from gaining any benefit from that rest. In addition, when the target wakes up, it takes 3d6 psychic damage. If you have a body part, lock of hair, clipping from a nail, or similar portion of the target�s body, the target makes its saving throw with disadvantage.'
      }
      {
        name: "Druidcraft"
        level: 0
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 30
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Druid'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 236
        descriptions:
          main: 'Whispering to the spirits of nature, you create one of the following effects within range: � You create a tiny, harmless sensory effect that predicts what the weather will be at your location for the next 24 hours. The effect might manifest as a golden orb for clear skies, a cloud for rain, falling snowflakes for snow, and so on. This effect persists for 1 round. � You instantly make a flower blossom, a seed pod open, or a leaf bud bloom. � You create an instantaneous, harmless sensory effect, such as falling leaves, a puff of wind, the sound of a small animal, or the faint odor of skunk. The effect must fit in a 5-foot cube. � You instantly light or snuff out a candle, a torch, or a small campfire.'
      }
      {
        name: "Earthquake"
        level: 8
        school: 'Evocation'
        castingTime: '1 Action'
        range: 500
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a pinch of dirt, a piece of rock, and a lump of clay'
        classes: [
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Sorcerer'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 236
        descriptions:
          main: 'You create a seismic disturbance at a point on the ground that you can see within range. For the duration, an intense tremor rips through the ground in a 100-foot- radius circle centered on that point and shakes creatures and structures in contact with the ground in that area. The ground in the area becomes difficult terrain. Each creature on the ground that is concentrating must make a Constitution saving throw. On a failed save, the creature�s concentration is broken. When you cast this spell and at the end of each turn you spend concentrating on it, each creature on the ground in the area must make a Dexterity saving throw. On a failed save, the creature is knocked prone. This spell can have additional effects depending on the terrain in the area, as determined by the DM. Fissures. Fissures open throughout the spell�s area at the start of your next turn after you cast the spell. A total of 1d6 such fissures open in locations chosen by the DM. Each is 1d10 x 10 feet deep, 10 feet wide, and extends from one edge of the spell�s area to the opposite side. A creature standing on a spot where a fissure opens must succeed on a Dexterity saving throw or fall in. A creature that successfully saves moves with the fissure�s edge as it opens. A fissure that opens beneath a structure causes it to automatically collapse (see below). Structures. The tremor deals 50 bludgeoning damage to any structure in contact with the ground in the area when you cast the spell and at the start of each of your turns until the spell ends. If a structure drops to 0 hit points, it collapses and potentially damages nearby creatures. A creature within half the distance of a structure�s height must make a Dexterity saving throw. On a failed save, the creature takes 5d6 bludgeoning damage, is knocked prone, and is buried in the rubble, requiring a DC 20 Strength (Athletics) check as an action to escape. The DM can adjust the DC higher or lower, depending on the nature of the rubble. On a successful save, the creature takes half as much damage and doesn�t fall prone or become buried.'
      }
      {
        name: "Eldritch Blast"
        level: 0
        school: 'Evocation'
        castingTime: '1 Action'
        range: 120
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Warlock'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 237
        descriptions:
          main: 'A beam of crackling energy streaks toward a creature within range. Make a ranged spell attack against the target. On a hit, the target takes 1d10 force damage.'
          level: 'Two beams at 5th level, three beams at 11th level, and four beams at 17th level. you can direct the beams at the same target or at different ones. Make a separate attack roll for each beam.'
      }
      {
        name: "Elemental Weapon"
        level: 3
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 5
        duration: 'Concentration, up to 1 hour '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Paladin'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 237
        descriptions:
          main: 'A nonmagical weapon you touch becomes a magic weapon. Choose one of the following damage types: acid, cold, fire, lightning, or thunder. For the duration, the weapon has a +1 bonus to attack rolls and deals an extra 1d4 damage of the chosen type when it hits.'
          level: 'When you cast this spell using a spell slot of 5th or 6th level, the bonus to attack rolls increases to +2 and the extra damage increases to 2d4. When you use a spell slot of 7th level or higher, the bonus increases to +3 and the extra damage increases to 3d4.'
      }
      {
        name: "Enhance Ability"
        level: 2
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 5
        duration: 'Concentration, up to 1 hour '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'fur or a feather from a beast'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Sorcerer'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 237
        descriptions:
          main: 'You touch a creature and bestow upon it a magical enhancement. Choose one of the following effects: the target gains the effect until the spell ends.
- Bear�s Endurance. The target has advantage on Constitution checks. It also gains 2d6 temporary hit points, which are lost when the spell ends.
- Bull�s Strength. The target has advantage on Strength checks, and his or her carrying capacity doubles.
- Cat�s Grace. The target has advantage on Dexterity checks. It also doesn�t take damage from falling 20 feet or less if it isn�t incapacitated.
- Eagle�s Splendor. The target has advantage on Charisma checks.
- Fox�s Cunning. The target thas advantage on Intelligence checks.
- Owl�s Wisdom. The target has advantage on Wisdom checks.'
          level: 'When you cast this spell using a spell slot of 3rd level or higher, you can target one additional creature for each slot level above 2nd.'
      }
      {
        name: "Enlarge/Reduce"
        level: 2
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 30
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a pinch of powdered iron'
        classes: [
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 237
        descriptions:
          main: 'You cause a creature or an object you can see within range to grow larger or smaller for the duration. Choose either a creature or an object that is neither worn nor carried. If the target is unwilling, it can make a Constitution saving throw. On a success, the spell has no effect. If the target is a creature, everything it is wearing and carrying changes size with it. Any item dropped by an affected creature returns to normal size at once. Enlarge. The target�s size doubles in all dimensions, and its weight is multiplied by eight. This growth increases its size by one category � from Medium to Large, for example. If there isn�t enough room for the target to double its size, the creature or object attains the maximum possible sizei n the space available. Until the spell ends, the target also has advantage on Strength checks and Strength saving throws. The target�s weapons also grow to match its new size. While these weapons are enlarged, the target�s attack with them deal 1d4 extra damage. Reduce. The target�s size is halved in all dimensions, and its weight is reduced to one-eighth of normal. This reduction decreases its size by one category � from Medium to Small, for example. Until the spell ends, the target also has disadvantage on Strength checks and Strength saving throws. The target�s weapons also shrink to match its new size. While these weapons are reduced, the target�s attacks with them deal 1d4 less damage (this can�t reduce the damage below 1).'
      }
      {
        name: "Ensnaring Strike"
        level: 1
        school: 'Conjuration'
        castingTime: '1 Bonus Action'
        range: 0
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal']
        classes: [
          Class.findOne({name: 'Ranger'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 237
        descriptions:
          main: 'The next time you hit a creature with a weapon attack before this spell ends, a writhing mass of thorny vines appears at the point of impact, and the target must succeed on a Strength saving throw or be restrained by the magical vines until the spell ends. A Large or larger creature has advantage on this saving throw. If the target succeeds on the save, the vines shrivel away. While restrained by this spell, the target takes 1d6 piercing damage at the start of each of its turns. A creature restrained by the vines or one that can touch the creature can use its action to make a Strength check against your spell save DC. On a success, the target is freed.'
          level: 'If you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.'
      }
      {
        name: "Entangle"
        level: 1
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 90
        duration: 'Concentration, up to 1 minute '
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
          page: 238
        descriptions:
          main: 'Grasping weeds and vines sprout from the ground in a 20-foot square starting from a point within range. For the duration, these plants turn the ground in the area into difficult terrain. A creature in the area when you cast the spell must succeed on a Strength saving throw or be restrained by the entangling plants until the spell ends. A creature restrained by the plants can use its action to make a Strength check against your spell save DC. On a success, it frees itself. When the spell ends, the conjured plants wilt away.'
      }
      {
        name: "Enthrall"
        level: 2
        school: 'Enchantment'
        castingTime: '1 Action'
        range: 60
        duration: '1 Minute'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Warlock'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 238
        descriptions:
          main: 'You weave a distracting string of words, causing creatures of your choice that you can see within range and that can hear you to make a Wisdom saving throw. Any creature that can�t be charmed succeeds on this saving throw automatically, and if you or your companions are fighting a creature, it has advantage on the save. On a failed save, the target has disadvantage on Wisdom (Perception) checks made to perceive any creature other than you until the spell ends or until the target can no longer hear you. The spell ends if you are incapacitated or can no longer speak.'
      }
      {
        name: "Etherealness"
        level: 7
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 0
        duration: 'Up to 8 hours'
        components: ['Verbal', 'Somatic']
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
          page: 238
        descriptions:
          main: 'You step into the border regions of the Ethereal Plane, in the area where it overlaps with your current plane. You remain in the Border Ethereal for the duration or until you use your action to dismiss the spell. During this time, you can move in any direction. If you move up or down, every foot of movement costs an extra foot. You can see and hear the plan you originated from, but everything there looks gray, and you can�t see anything more than 60 feet away. While on the Ethereal Plane, you can only affect and be affected by other creatures on that plane. Creatures that aren�t on the Ethereal Plance can�t perceive you and can�t interact with you, unless a special ability or magic has given them the ability to do so. You ignore all objects and effects that aren�t on the Ethereal Plane, allowing you to move through objects you perceive on the plan you originated from. When the spell ends, you immediately return to the plane you originiated from in teh spot you currently occupy. If you occupy the same spot as a solid object or creature when this happens, you are imediately shunted to the neares unoccupied space that you can occupy and take force damage equal to twice the number of feet you are moved. This spell has no effect if you cast it while you are on the Ethereal Plane or a plane that doesn�t border it, such as one of the Outer Planes.'
          level: 'When you cast this spell using a spell slot of 8th level or higher, you can target up to three willing creatures (including you) for each slot level above 7th. The creatures must be within 10 feet of you when you cast the spell.'
      }
      {
        name: "Evard�s Black Tentacles"
        level: 4
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 90
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a piece of tentacle from a giant octopus or a giant squid'
        classes: [
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 238
        descriptions:
          main: 'Squirming, ebony tentacles fill a 20-foot square on ground that you can see within range. For the duration, these tentacles turn the ground in the area into difficult terrain. When a creature enters the afected area for the first time on a turn or starts its turn there, the creature must succeed on a Dexterity saving throw or take 3d6 bludgeoning damage and be restrained by the tentacles until the spell ends. A creature that starts its turn in the area and is already restrained by the tentacles takes 3d6 bludgeoning damage. A creature restrained by the tentacles can use its action to make a Strength or Dexterity check (its choice) against your spell save DC. On a success, it frees itself.'
      }
      {
        name: "Expeditious Retreat"
        level: 1
        school: 'Transmutation'
        castingTime: '1 Bonus Action'
        range: 0
        duration: 'Concentration, up to 10 minutes '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 238
        descriptions:
          main: 'This spell allows you to move at an incredible pace. When you cast this spell, and then as a bonus action on each of your turns until the spell ends, you can take the Dash action.'
      }
      {
        name: "Eyebite"
        level: 6
        school: 'Necromancy'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 238
        descriptions:
          main: 'For the spell�s duration, your eyes become an inky void imbued with dread power. One creature of your choice within 60 feet of you that you can see must succeed on a Wisdom saving throw or be affected by one of the following effects of your choice for the duration. On each of your turns until the spell ends, you can use your action to target another creature but can�t target a creature again if it has succeeded on a saving throw against this casting of eyebite. Asleep. The target galls unconscious. It wakes up if it takes any damage or if another creature uses its action to shake the sleeper awake. Panicked. The target is frightened of you. On each of its turns, the frightened creature must take the Dash action and move away from you by the safest and shortest available route, unless there is nowhere to move. If the target moves to a place at least 60 feet away from you where it can no longer see you, this effect ends. Sickened. The target has disadvantage on attack rolls and ability checks. At the end of each of its turns, it can make another Wisdom saving throw. If it succeeds, the effect ends.'
      }
    ]

    spells.forEach (spell) ->
      spell.createdAt = new Date()
      Spell.insert spell