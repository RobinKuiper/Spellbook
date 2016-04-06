Migrations.add
  version: 5
  name: 'Add g spells'
  up: ->
    spells = [
      {
        name: "Gaseous Form"
        level: 3
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 5
        duration: 'Concentration, up to 1 hour '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a bit of gauze and a wisp of smoke'
        classes: [
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Warlock'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 244
        descriptions:
          main: 'You transform a willing creature you touch, along with everything it’s wearing and carrying, into a misty cloud for the duration. The spell ends if the creature drops to 0 hit points. An incorporeal creature isn’t affected. While in this form, the target’s only method of movement is a flying speed of 10 feet. The target can enter and occupy the space of another creature. The target has resistance to nonmagical damage, and it has advantage on Strength, Dexterity, and Constitution saving throws. The target can pass through small holes, narrow openeings, and even mere cracks, though it treats liquids as though they were solid surfaces. The target can’t fall and remains hovering in the air even when stunned or otherwise incapacitated. While in the form of a misty cloud, the target can’t talk or manipulate objects, and any objects it was carrying or holding can’t be dropped, used, or otherwise interacted with. The target can’t attack or cast spells.'
      }
      {
        name: "Gate"
        level: 9
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 60
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a diamond worth at least 5,000 gp'
        classes: [
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 244
        descriptions:
          main: 'You conjure a portal linking an unoccupied space you can see within range to a precise location on a different plane of existence. The portal is a circular opening, which you can make 5 to 20 feet in diameter. You can orient the portal in any direction you choose. The portal lasts for the duration. The portal has a front and a back on each plane where it appears. Travel through the portal is possible only by moving through its front. Anything that does so is instantly transported to the other plane, appearing in the unoccupied space nearest to the portal. Deities and other planar rulers can prevent portals created by this spell from opening in their presence or anywhere within their domains. When you cast this spell, you can speak the name of a specific creature (a pseudonym, title, or nickname doesn’t work). If that creature is on a plane other than the one you are on, the portal opens in the named creature’s immediate vicinity and draws the creature through it to the nearest unoccupied space on your side of the portal. You gain no special power over the creature, and it is free to act as the Dm deems appropriate. It might leave, attack you, or help you.'
      }
      {
        name: "Geas"
        level: 5
        school: 'Enchantment'
        castingTime: '1 Minute'
        range: 60
        duration: '30 Days'
        components: ['Verbal']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Paladin'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 245
        descriptions:
          main: 'You place a magical command on a creature that you can see within range, forcing it to carry out some service or refrain from some action or course of actiity as you decide. If the creature can understand you, it must succeed on a Wisdom saving throw or become charmed by you for the duration. While the creature is charmed by you, it takes 5d10 psychic damage each time it acts in a manner directly counter to your instructions, but no more than once each day. A creature that can’t understand you is unaffected by the spell. You can issue any command you choose, short of an activity that would result in certain death. Should you issue a suicidal command, the spell ends. You can end the spell early by using an action to dismiss it. A remove curse, greater restoration, or wish spell also ends it.'
          level: 'When you cast this spell using a spell slot of 7th or 8th level, the duration is 1 year. When you cast this spell using a spell slot of 9th level the spell lasts until it is ended by one of the spells mentioned above.'
      }
      {
        name: "Gentle Repose (Ritual)"
        level: 2
        school: 'Necromancy'
        castingTime: '1 Action'
        range: 5
        duration: '10 Days'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a pinch of salt and one copper piece placed on each of the corpse’s eyes, which must remain there for the duration'
        classes: [
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 245
        descriptions:
          main: 'You touch a corpse or other remains. For the duration, the target is protected from decay and can’t become undead. The spell also effectively extends the time limit on raising the target from the dead, since days spent under the influence of this spell don’t count against the time limit of spells such as raise dead.'
      }
      {
        name: "Giant Insect"
        level: 4
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 30
        duration: 'Concentration, up to 10 minutes '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Druid'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 245
        descriptions:
          main: 'You transform up to ten centipedes, three spiders, five wasps, or one scorpion within range into giant versions of their natural forms for the duration. A centipede becomes a giant centipede, a spider becaomes a giant spider, a wasp becomes a giant wasp, and a scorpion becomes a giant scorpion. Each creature obeys your verbal commands, and in combat, they act on your turn each round. The DM has the statistics for these creatures and resolves their actions and movement. A creature remains in its giant size for the duration, until it drops to 0 hit points, or until you use an action to dismiss the effect on it. The DM might allow you to choose different targets. For example, if you transform a bee, its giant version might have the same statistics as a giant wasp.'
      }
      {
        name: "Glibness"
        level: 8
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 0
        duration: '1 Hour'
        components: ['Verbal']
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Warlock'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 245
        descriptions:
          main: 'Until the spell ends, when you make a Charisma check, you can replace the number you roll with a 15. Additionally, no matter what you say, magic that would determine if you are telling the truth indicates that you are being truthful.'
      }
      {
        name: "Globe of Invulnerability"
        level: 6
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a glass or crystal bead that shatters when the spell ends'
        classes: [
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 245
        descriptions:
          main: 'An immobile, faintly shimmering barrier springs into existence in a 10-foot radius around you and remains for the duration. Any spell of 5th level or lower cast from outside the barrier can’t affect creatures or objects within it, even if the spell is cast using a higher level spell slot. Such a spell can target creatures and objects within the barrier, but the spell has no effect on them. Similarly, the area within the barrier is excluded from the areas affected by such spells.'
          level: 'When you cast this spell using a spell slot of 7th level or higher, the barrier blocks spells of one level higher for each slot level above 6th.'
      }
      {
        name: "Glyph of Warding"
        level: 3
        school: 'Abjuration'
        castingTime: '1 Hour'
        range: 5
        duration: 'Until dispelled or triggered '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'incense and powdered diamond worth at least 200 gp, which the spell consumes'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 245
        descriptions:
          main: 'When you cast this spell, you inscribe a glyph that harms other creatures, either upon a surface (such as a table or a section of floor or wall) or within an object that can be closed (such as a book, a scroll, or a treasure chest) to conceal the glyph. Ifyou choose a surface, the glyph can cover an area of the surface no larger than 10 feet in diameter. If you choose an object, that object must remain in its place; if the object is moved more than 10 feet from where you cast this spell, the glyph is broken, and the spell ends without being triggered.



The glyph is nearly invisible and requires a successful Intelligence (Investigation) check against your spell save DC to be found.

You decide what triggers the glyph when you cast the spell. For glyphs inscribed on a surface, the most typical triggers include touching or standing on the glyph, removing another object covering the glyph, approaching within a certain distance of the glyph, or manipulating the object on which the glyph is inscribed. For glyphs inscribed within an object, the most common triggers include opening that object, approaching within a certain distance of the object, or seeing or reading the glyph. Once a glyph is triggered, this spell ends.

You can further refine the trigger so the spell activates only under certain circumstances or according to physical characteristics (such as height or weight), creature kind (for example, the ward could be set to affect aberrations or drow), or alignment. You can also set conditions for creatures that don’t trigger the glyph, such as those who say a certain password.



When you inscribe the glyph, choose explosive runes or a spell glyph.


Explosive Runes.
When triggered, the glyph erupts with magical energy in a 20-foot-radius sphere centered on the glyph. The sphere spreads around corners. Each creature in the area must make a Dexterity saving throw. A creature takes 5d8 acid, cold, fire, lightning, or thunder damage on a failed saving throw (your choice when you create the glyph), or half as much damage on a successful one.


Spell Glyph.
You can store a prepared spell of 3rd level or lower in the glyph by casting it as part of creating the glyph. The spell must target a single creature or an area. The spell being stored has no immediate effect when cast in this way. When the glyph is triggered, the stored spell is cast. If the spell has a target, it targets the creature that triggered the glyph. If the spell affects an area, the area is centered on that creature. If the spell summons hostile creatures or creates harmful objects or traps, they appear as close as possible to the intruder and attack it. If the spell requires concentration, it lasts until the end of its full duration.'
          level: 'When you cast this spell using a spell slot of 4th level or higher, the damage of an explosive runes glyph increases by 1d8 for each slot levelabove3rd.Ifyoucreateaspellglyph,youcanstore any spell of up to the same level as the slot you use for the glyph of warding.'
      }
      {
        name: "Goodberry"
        level: 1
        school: 'Transmutation'
        castingTime: '1 Action'
        range: 5
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a sprig of mistletoe'
        classes: [
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Ranger'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 246
        descriptions:
          main: 'Up to ten berries appear in your hand and are infused with magic for the duration. A creature can use its action to eat one berry. Eating a berry restores 1 hit point, and the berry provides enough nourishment to sustain a creature for one day. The berries lose their potency if they have not been consumed within 24 hours of the casting of this spell.'
      }
      {
        name: "Grasping Vine"
        level: 4
        school: 'Conjuration'
        castingTime: '1 Bonus Action'
        range: 30
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Ranger'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 246
        descriptions:
          main: 'You conjure a vine that sprouts from the ground in an unoccupied space of your choice that you can see within range. When you cast this spell, you can direct the vine to lash out at a creature within 30 feet of it that you can see. That creature must succeed on a Dexterity saving throw or be pulled 20 feet directly toward the vine. Until the spell ends, you can direct the vine to lash out at the same creature or another one as a bonus action on each of your turns.'
      }
      {
        name: "Grease"
        level: 1
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 60
        duration: '1 Minute'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a bit of pork rind or butter'
        classes: [
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 246
        descriptions:
          main: 'Slick grease covers the ground in a 10-foot square centered on a point within range and turns it into difficult terrain for the duration. When the grease appears, each creature standing in its area must succeed on a Dexterity saving throw or fall prone. A creature that enters the area or ends its turn there must also succeed on a Dexterity saving throw or fall prone.'
      }
      {
        name: "Greater Invisibility"
        level: 4
        school: 'Illusion'
        castingTime: '1 Action'
        range: 5
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
          page: 246
        descriptions:
          main: 'You or a creature you touch becomes invisible until the spell ends. Anything the target is wearing or carrying is invisible as long as it is on the target’s person.'
      }
      {
        name: "Greater Restoration"
        level: 5
        school: 'Abjuration'
        castingTime: '1 Action'
        range: 5
        duration: 'Instanteneous'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'diamond dust worth 100 gp, which the spell consumes'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Druid'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 246
        descriptions:
          main: 'You imbue a creature you touch with positive energy to undo a debilitating effect. You can reduce the target’s exhaustion level by one, or end one of the following effects on the target: * One effect that charmed or petrified the target * One curse, including the target’s attunement to a cursed magic item * Any reduction to one of the target’s ability scores * One effect reducing the target’s hit point maximum'
      }
      {
        name: "Guardian of Faith"
        level: 4
        school: 'Conjuration'
        castingTime: '1 Action'
        range: 30
        duration: '8 Hours'
        components: ['Verbal']
        classes: [
          Class.findOne({name: 'Cleric'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 246
        descriptions:
          main: 'A Large spectral guardian appears and hovers for the duration in an unoccupied space of your choice that you can see within range. The guardian occupies that space and is indistinct except for a gleaming sword and shield emblazoned with the symbol of your deity. Any creature hostile to you that moves to a space within 10 feet of the guardian for the firs ttime on a turn must succeed on a Dexterity saving throw. The creature takes 20 radiant damage on a failed save, or half as much damage on a successful one. The guardian vanishes when it has dealt a total of 60 damage.'
      }
      {
        name: "Guards and Wards"
        level: 6
        school: 'Abjuration'
        castingTime: '10 Minutes'
        range: 5
        duration: '24 Hours'
        components: ['Verbal', 'Somatic', 'Material']
        material: 'burning incense, a small measure of brimstone and oil, a knotted string, a small amount of umber hulk blood, and a small silver rod worth at least 10 gp'
        classes: [
          Class.findOne({name: 'Bard'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 248
        descriptions:
          main: 'You create a ward that protects up to 2,500 square feet of floor space (an area 50 feet square, or one hundred 5-foot squares or twenty-five 10-foot squares). The warded area can be up to 20 feet tall, and shaped as you desire. You can ward several stories of a stronghold by dividing the area among them, as long as you can walk into each contiguous area while you are casting the spell. When you cast this spell, you can specify individuals that are unaffected by any or all of the effects that you choose. You can also specify a password that, when spoken aloud, makes the speaker immune to these effects. Guards and wards creates the following effects within the warded area. Corridors. Fog fills all the warded corridors, making them heavily obscured. In addition, at each intersection or branching passage offering a choice of direction, there is a 50 percent chance that a creature other than you will believe it is going in the opposite direction from the one it chooses. Doors. All doors in the warded area are magically locked, as if sealed by an arcane lock spell. In addition, you can cover up to ten doors with an illusion (equivalent to the illusory object function of the m inor illusion spell) to make them appear as plain sections of wall. Stairs. Webs fill all stairs in the warded area from top to bottom, as the web spell. These strands regrow in 10 minutes if they are burned or torn away while guards and wards lasts. Other Spell Effect. You can place your choice of one of the following magical effects within the warded area of the stronghold.
-Place dancing lights in four corridors. You can desig­nate a simple program that the lights repeat as long as guards and wards lasts.
-Place magic mouth in two locations.
-Place stinking cloud in two locations. The vapors appear in the places you designate'
      }
      {
        name: "Guidance"
        level: 0
        school: 'Divination'
        castingTime: '1 Action'
        range: 5
        duration: 'Concentration, up to 1 minute'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Cleric'})._id
          Class.findOne({name: 'Druid'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 248
        descriptions:
          main: 'You touch one willing creature. Once before the spell ends, the target can roll a d4 and add the number rolled to one ability check of its choice. It can roll the die before or after making the ability check. The spell then ends.'
      }
      {
        name: "Guiding Bolt"
        level: 1
        school: 'Evocation'
        castingTime: '1 Action'
        range: 120
        duration: '1 Round'
        components: ['Verbal', 'Somatic']
        classes: [
          Class.findOne({name: 'Cleric'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 248
        descriptions:
          main: 'A flash of light streaks toward a creature of your choice within range. Make a ranged spell attack against the target. On a hit, the target takes 4d6 radiant damage, and the next attack roll made against this target before the end of your next turn has advantage, thanks to the mystical dim light glittering on the target until then.'
          level: 'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.'
      }
      {
        name: "Gust of Wind"
        level: 2
        school: 'Evocation'
        castingTime: '1 Action'
        range: 0
        duration: 'Concentration, up to 1 minute '
        components: ['Verbal', 'Somatic', 'Material']
        material: 'a legume seed'
        classes: [
          Class.findOne({name: 'Druid'})._id
          Class.findOne({name: 'Sorcerer'})._id
          Class.findOne({name: 'Wizard'})._id
        ]
        version: 5
        book:
          name: 'Player Hand Book'
          page: 248
        descriptions:
          main: 'A line of strong wind 60 feet long and 10 feet wide blasts from you in a direction you choose for the spell’s duration. Each creature that starts its turn in the line must succeed on a Strength saving throw or be pushed 15 feet away from you in a direction following the line. Any creature in the line must spend 2 feet of movement for every 1 foot it moves when moving closer to you. The gust disperses gas or vapor, and it extinguishes candles, torches, and similar unprotected flames in the area. It causes protected flames, such as those of lanterns, to dance wildly and has a 50 percent chance to extinguish them. As a bonus action on each of your turns before the spell ends, you can change the direction in which the line blasts from you.'
      }
    ]

    spells.forEach (spell) ->
      spell.createdAt = new Date()
      Spell.insert spell