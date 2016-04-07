Migrations.add
  version: 15
  name: 'Add Swordcoast Adventures spells'
  up: ->
    spells = [
      {
        name: "Booming Blade"
        level: 0
        school: 'Evocation'
        castingTime: '1 Action'
        range: 5
        duration: 'Instanteneous'
        components: ['Verbal', 'Material']
        material: 'a weapon'
        classes: [
          'Sorcerer'
          'Warlock'
          'Wizard'
        ]
        version: 5
        book:
          name: "Sword Coast Adventure's Guide"
          page: 143
        descriptions:
          main: "As part of the action used to cast this spell, you must make a melee attack with a weapon against one creature within the spell's range, otherwise the spell fails.
On a hit, the target suffers the attack's normal effects, and it becomes sheathed in booming energy until the start of your next turn. If the target willingly moves be- fore then, it immediately takes 1d8 thunder damage, and the spell ends."
          level: 'At 5th level, the melee attack deals an extra 1d8 thunder damage to the target, and the damage the target takes for moving increases to 2d8. Both damage rolls increase by 1d8 at 11th level and 17th level.'
      }
      {
        name: "Green-Flame Blade"
        level: 0
        school: 'Evocation'
        castingTime: '1 Action'
        range: 5
        duration: 'Instanteneous'
        components: ['Verbal', 'Material']
        material: 'a weapon'
        classes: [
          'Sorcerer'
          'Warlock'
          'Wizard'
        ]
        version: 5
        book:
          name: "Sword Coast Adventure's Guide"
          page: 143
        descriptions:
          main: "As part of the action used to cast this spell, you must make a melee attack with a weapon against one creature within the spell's range, otherwise the spell fails.
On a hit, the target suffers the attack's normal effects, and green fire leaps from the target to a different crea- ture ofyour choice that you can see within 5 feet of it. The second creature takes fire damage equal to your spellcasting ability modifier."
          level: 'At 5th level, the melee attack deals an extra 1d8 fire damage to the target, and the fire damage to the sec- ond creature increases to 1d8 +your spellcasting ability modifier. Both damage rolls increase by 1d8 at 11th level and 17th level.'
      }
      {
        name: "Lightning Lure"
        level: 0
        school: 'Evocation'
        castingTime: '1 Action'
        range: 15
        duration: 'Instanteneous'
        components: ['Verbal']
        classes: [
          'Sorcerer'
          'Warlock'
          'Wizard'
        ]
        version: 5
        book:
          name: "Sword Coast Adventure's Guide"
          page: 143
        descriptions:
          main: "You create a lash of lightning energy that strikes at one creature of your choice that you can see within range.
The target must succeed on a Strength saving throw or be pulled up to 10 feet in a straight line toward you and then take 1d8 lightning damage if it is within 5 feet of you. "
          level: "This spell's damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8)."
      }
      {
        name: "Sword Burst"
        level: 0
        school: '0'
        castingTime: '1 Action'
        range: 5
        duration: 'Instanteneous'
        components: ['Verbal']
        classes: [
          'Sorcerer'
          'Warlock'
          'Wizard'
        ]
        version: 5
        book:
          name: "Sword Coast Adventure's Guide"
          page: 143
        descriptions:
          main: "You create a momentary circle of spectral blades that sweep around you.
Each creature within range, other than you, must succeed on a Dexterity saving throw or take 1d6 force damage. "
          level: "This spell's damage increases by 1d6 when you reach 5th level (2d6), 11th level (3d6), and 17th level (4d6)."
      }
    ]

    spells.forEach (spell) ->
      spell.createdAt = new Date()
      Spell.insert spell