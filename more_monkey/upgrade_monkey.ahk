upgrade_description(monkey, path)
{
  ; monkey = [x, y, tower_type, [0,0,0]] 4 var/array is how upgraded it is
  type := monkey[3]
  mp1 := monkey[4][1]
  mp2 := monkey[4][2]
  mp3 := monkey[4][3]
  if (path == 1)
    mp1++
  else if (path == 2)
    mp2++
  else if (path == 3)
    mp3++
  else
    outputdebug, ERROR -%path%- is not matching with 1 2 or 3
  if (mp1 == 6 || mp2 == 6 || mp3 == 6)
    out = PARAGON MUHAHAHA
  else if (type == "dart") ; better descriptions ✔
  {
    if (mp1 == 5)
      out = big jugger
    else if (mp2 == 5)
      out = little tiny plasma monkey
    else if (mp3 == 5)
      out = crossbow professional
    else if (path == 1)
    {
      if (mp1 == 4)
        out = yellow accent balls
      else if (mp1 == 3)
        out = black spike balls
      else if (mp1 == 2)
        out = red tail band
      else
        out = green tail band
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = blue do-rag
      else if (mp2 == 3)
        out = black do-rag
      else if (mp2 == 2)
        out = red headband
      else
        out = green headband
    }
    else
    {
      if (mp3 == 4)
        out = black crossbow
      else if (mp3 == 3)
        out = wood crossbow
      else if (mp3 == 2)
        out = red arm bands
      else
        out = green arm bands
    }
  }
  else if (type == "rang") ; better descriptions ✔
  {
    if (mp1 == 5)
      out = Lord, Accept Our True Devotion
    else if (mp2 == 5)
      out = "permanent super fast"
    else if (mp3 == 5)
      out = on point hairdo cobber
    else if (path == 1)
    {
      if (mp1 == 4)
        out = gray hood
      else if (mp1 == 3)
        out = purple suit
      else if (mp1 == 2)
        out = glaives
      else
        out = x
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = dark bionic
      else if (mp2 == 3)
        out = bionic arm
      else if (mp2 == 2)
        out = gray suit double line
      else
        out = line
    }
    else
    {
      if (mp3 == 4)
        out = green hat
      else if (mp3 == 3)
        out = safari hat
      else if (mp3 == 2)
        out = red outlines
      else
        out = gloves
    }
  }
  else if (type == "bomb") ; better descriptions ✔
  {
    if (mp1 == 5)
      out = seeing-red punch
    else if (mp2 == 5)
      out = Moab Eliminator, 'nuff said
    else if (mp3 == 5)
      out = large ... in charge
    else if (path == 1)
    {
      if (mp1 == 4)
        out = black and green
      else if (mp1 == 3)
        out = red and yellow
      else if (mp1 == 2)
        out = double ring
      else
        out = ring
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = black and red
      else if (mp2 == 3)
        out = yellow
      else if (mp2 == 2)
        out = gray
      else
        out = red fins
    }
    else
    {
      if (mp3 == 4)
        out = bigger and bumpier
      else if (mp3 == 3)
        out = yellow muzzle
      else if (mp3 == 2)
        out = explosion
      else
        out = target
    }
  }
  else if (type == "tack") ; better descriptions ✔
  {
    if (mp1 == 5)
      out = GREAT BALLS OF FIRE!
    else if (mp2 == 5)
      out = saw-y pointy spinny . . . YOUCH!!
    else if (mp3 == 5)
      out = attack of the stack of tacks
    else if (path == 1)
    {
      if (mp1 == 4)
        out = open flame
      else if (mp1 == 3)
        out = yellow
      else if (mp1 == 2)
        out = four tacks (... or three blades?! SMH)
      else
        out = three tacks (or two blades... ?! okay... strange)
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = spinny point collar
      else if (mp2 == 3)
        out = sawzall
      else if (mp2 == 2)
        out = tall base
      else
        out = flat top
    }
    else
    {
      if (mp3 == 4)
        out = black
      else if (mp3 == 3)
        out = red
      else if (mp3 == 2)
        out = twelve
      else
        out = ten
    }
  }
  else if (type == "ice")
  {
    if (mp1 == 5)
      out = diamond crest with purple body
    else if (mp2 == 5)
      out = blue body and with blue body
    else if (mp3 == 5)
      out = ice shoes and jumbo ice cannon
    else if (path == 1)
    {
      if (mp1 == 4)
        out = gray lightning headband with red body
      else if (mp1 == 3)
        out = gray diamond headband
      else if (mp1 == 2)
        out = gray snowflake headband
      else
        out = snowflake forehead
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = white coat and blue scarf
      else if (mp2 == 3)
        out = brown coat and red scarf
      else if (mp2 == 2)
        out = red hat
      else
        out = earmuffs
    }
    else
    {
      if (mp3 == 4)
        out = ice armor
      else if (mp3 == 3)
        out = ice cannon with gray earmuffs
      else if (mp3 == 2)
        out = blue shades
      else
        out = gray gloves
    }
  }
  else if (type == "glue")
  {
    if (mp1 == 5)
      out = green bodysuit
    else if (mp2 == 5)
      out = orange bodysuit with spider tank
    else if (mp3 == 5)
      out = black suit with red twist tank cap
    else if (path == 1)
    {
      if (mp1 == 4)
        out = dark blue bodysuit with quadruple glue cannisters
      else if (mp1 == 3)
        out = blue bodysuit with gas mask and green glue
      else if (mp1 == 2)
        out = purple bodysuit
      else
        out = gray hat
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = huge tank
      else if (mp2 == 3)
        out = yellow bodysuit with big nozzle
      else if (mp2 == 2)
        out = orange bodysuit
      else
        out = orange nozzle with black tank
    }
    else
    {
      if (mp3 == 4)
        out = gray bodysuit with overfilled shooters and tank
      else if (mp3 == 3)
        out = white bodysuit with pink glue and double nozzle
      else if (mp3 == 2)
        out = pink bodysuit
      else
        out = glue splatter on head
    }
  }
  else if (type == "sniper")
  {
    if (mp1 == 5)
      out = full bush camouflage
    else if (mp2 == 5)
      out = spider eyes camo helmet
    else if (mp3 == 5)
      out = long sleeves and pants with gas mask
    else if (path == 1)
    {
      if (mp1 == 4)
        out = leaves camouflage
      else if (mp1 == 3)
        out = black hat with red accent gun
      else if (mp1 == 2)
        out = purple hat with gray vest
      else
        out = red hat
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = radio with red antenna ball
      else if (mp2 == 3)
        out = full camo gear
      else if (mp2 == 2)
        out = explosion decal
      else
        out = blue hat with night vision goggles
    }
    else
    {
      if (mp3 == 4)
        out = black helmet
      else if (mp3 == 3)
        out = headphones
      else if (mp3 == 2)
        out = orange hat
      else
        out = gray hat
    }
  }
  else if (type == "sub")
  {
    if (mp1 == 5)
      out = black electricity
    else if (mp2 == 5)
      out = red sub and monkey below deck
    if (mp3 == 5)
      out = yellow accents
    else if (path == 1)
    {
      if (mp1 == 4)
        out = black with green atomic nose
      else if (mp1 == 3)
        out = submerged with glass nose
      else if (mp1 == 2)
        out = green fins and binoculars
      else
        out = green hat
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = red belly with black top
      else if (mp2 == 3)
        out = red fins and missles
      else if (mp2 == 2)
        out = red nose
      else
        out = red accent on bow
    }
    else
    {
      if (mp3 == 4)
        out = pointed nose
      else if (mp3 == 3)
        out = triple guns
      else if (mp3 == 2)
        out = yellow rear
      else
        out = double shooter
    }
  }
  else if (type == "ship")
  {
    if (mp1 == 5)
      out = dark gray with double platforms
    else if (mp2 == 5)
      out = gray with green purple red accents
    else if (mp3 == 5)
      out = shipping containers
    else if (path == 1)
    {
      if (mp1 == 4)
        out = aircraft carrier
      else if (mp1 == 3)
        out = triple cannon
      else if (mp1 == 2)
        out = gray boat
      else
        out = pirate flag
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = double skull gray sails
      else if (mp2 == 3)
        out = sail and pirate hook
      else if (mp2 == 2)
        out = fire grapes
      else
        out = grapes on board
    }
    else
    {
      if (mp3 == 4)
        out = red ship
      else if (mp3 == 3)
        out = orange turbin
      else if (mp3 == 2)
        out = lookout nest
      else
        out = yellow cannon ring
    }
  }
  else if (type == "plane")
  {
    if (mp1 == 5)
      out = double black tail fins
    else if (mp2 == 5)
      out = all gray quad propellar
    else if (mp3 == 5)
      out = huge black with six propellars
    else if (path == 1)
    {
      if (mp1 == 4)
        out = bomber shape
      else if (mp1 == 3)
        out = full gray body
      else if (mp1 == 2)
        out = gray nose and fins
      else
        out = double red stripe
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = gray with black wing tips and green tail
      else if (mp2 == 3)
        out = twin propellar
      else if (mp2 == 2)
        out = dark helmet goggles on
      else
        out = yellow rings
    }
    else
    {
      if (mp3 == 4)
        out = all black quad propellar
      else if (mp3 == 3)
        out = black wings with jet engines
      else if (mp3 == 2)
        out = all red
      else
        out = red wing tips
    }
  }
  else if (type == "heli")
  {
    if (mp1 == 5)
      out = plasma gunners
    else if (mp2 == 5)
      out = dark gray sniper drop ability
    else if (mp3 == 5)
      out = brown camo
    else if (path == 1)
    {
      if (mp1 == 4)
        out = machine gun nose
      else if (mp1 == 3)
        out = razor blades
      else if (mp1 == 2)
        out = gray body
      else
        out = quad shooter
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = double blade
      else if (mp2 == 3)
        out = blue accents
      else if (mp2 == 2)
        out = blue helmet with goggles on
      else
        out = yellow tail fins
    }
    else
    {
      if (mp3 == 4)
        out = gray camo body
      else if (mp3 == 3)
        out = double green wing accents
      else if (mp3 == 2)
        out = gray with green wing accents
      else
        out = yellow arrow wing accents
    }
  }
  else if (type == "mortar")
  {
    if (mp1 == 5)
      out = gray with green accents
    else if (mp2 == 5)
      out = white hat with straight three cannons
    else if (mp3 == 5)
      out = yellow accents with yellow goggles
    else if (path == 1)
    {
      if (mp1 == 4)
        out = yellow with yellow gray bodysuit
      else if (mp1 == 3)
        out = goggles on
      else if (mp1 == 2)
        out = white cannon
      else
        out = cannon yellow rim
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = triple cannon
      else if (mp2 == 3)
        out = gray cannon
      else if (mp2 == 2)
        out = gray base
      else
        out = yellow handle
    }
    else
    {
      if (mp3 == 4)
        out = red fire cannon
      else if (mp3 == 3)
        out = cannon red rim
      else if (mp3 == 2)
        out = red helmet
      else
        out = headset
    }
  }
  else if (type == "dartling")
  {
    if (mp1 == 5)
      out = red throne cannon
    else if (mp2 == 5)
      out = left and right huge cannons
    else if (mp3 == 5)
      out = six barrel huge ride along
    else if (path == 1)
    {
      if (mp1 == 4)
        out = red bodysuit with yellow cannon
      else if (mp1 == 3)
        out = red helmet with yellow visor
      else if (mp1 == 2)
        out = black barrels
      else
        out = red dot
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = black bodysuit with green accents
      else if (mp2 == 3)
        out = purple helmet with rocket launcher
      else if (mp2 == 2)
        out = green barrels and gloves
      else
        out = purple cannon
    }
    else
    {
      if (mp3 == 4)
        out = four barrel ride along
      else if (mp3 == 3)
        out = blue helmet
      else if (mp3 == 2)
        out = single triple barrel with yellow helmet accents
      else
        out = stabilize legs
    }
  }
  else if (type == "wizard")
  {
    if (mp1 == 5)
      out = all white with moon wand
    else if (mp2 == 5)
      out = perma phoenix with wizard wings
    else if (mp3 == 5)
      out = dark skull throne
    else if (path == 1)
    {
      if (mp1 == 4)
        out = purple cape
      else if (mp1 == 3)
        out = blue ball wand
      else if (mp1 == 2)
        out = blue wide brim hat
      else
        out = blue hat
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = red phoenix hat with red wand
      else if (mp2 == 3)
        out = red outfit with fire ball wand
      else if (mp2 == 2)
        out = red wide brim hat with red gloves
      else
        out = black and red hat
    }
    else
    {
      if (mp3 == 4)
        out = green accent skull wand
      else if (mp3 == 3)
        out = purple accent hooded cloak
      else if (mp3 == 2)
        out = wide brim hat with glasses
      else
        out = big  ball magic
    }
  }
  else if (type == "super")
  {
    if (mp1 == 5)
      out = sun god
    else if (mp2 == 5)
      out = red accents
    else if (mp3 == 5)
      out = full coverage suit
    else if (path == 1)
    {
      if (mp1 == 4)
        out = yellow temple
      else if (mp1 == 3)
        out = yellow sun bodysuit
      else if (mp1 == 2)
        out = plasma triple mask
      else
        out = red laser visor
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = red eyes with green accents
      else if (mp2 == 3)
        out = gray bodysuit double shooter
      else if (mp2 == 2)
        out = gray wrists with gray head gear
      else
        out = cape and wrist gold accents
    }
    else
    {
      if (mp3 == 4)
        out = black helmet
      else if (mp3 == 3)
        out = dark bodysuit and cape
      else if (mp3 == 2)
        out = double yellow line with hero mask
      else
        out = yellow line cap
    }
  }
  else if (type == "ninja")
  {
    if (mp1 == 5)
      out = black rice hat
    else if (mp2 == 5)
      out = huge black pack
    else if (mp3 == 5)
      out = black mask with red horns
    else if (path == 1)
    {
      if (mp1 == 4)
        out = rice hat
      else if (mp1 == 3)
        out = white suit and hood
      else if (mp1 == 2)
        out = black bodysuit with red bands
      else
        out = headband
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = black suit spider mask
      else if (mp2 == 3)
        out = green hood suit with pack
      else if (mp2 == 2)
        out = black bodysuit with green accent
      else
        out = black ninja star symbol
    }
    else
    {
      if (mp3 == 4)
        out = full red mask
      else if (mp3 == 3)
        out = monster mask with red eyebrows
      else if (mp3 == 2)
        out = black bodysuit white star plaque
      else
        out = blue ninja star head plaque
    }
  }
  else if (type == "alchemist")
  {
    if (mp1 == 5)
      out = bearded and spikey hair
    else if (mp2 == 5)
      out = blue fur and pink body
    else if (mp3 == 5)
      out = jewel accents with red cape
    else if (path == 1)
    {
      if (mp1 == 4)
        out = helmet and double barrels
      else if (mp1 == 3)
        out = orange jacket and goggles
      else if (mp1 == 2)
        out = green potion
      else
        out = backpack
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = beard and spikey hair and goggles off
      else if (mp2 == 3)
        out = white coat with goggles on
      else if (mp2 == 2)
        out = black gloves and mask
      else
        out = white gloves
    }
    else
    {
      if (mp3 == 4)
        out = wide brim hat
      else if (mp3 == 3)
        out = gray and gold outfit
      else if (mp3 == 2)
        out = blue visor goggles
      else
        out = visor goggles
    }
  }
  else if (type == "druid")
  {
    if (mp1 == 5)
      out = white hood cloak on a cloud
    else if (mp2 == 5)
      out = green with light eyes
    else if (mp3 == 5)
      out = red body and crazy eyes
    else if (path == 1)
    {
      if (mp1 == 4)
        out = blue cloak with light eyes
      else if (mp1 == 3)
        out = light blue hood cloak
      else if (mp1 == 2)
        out = blue band with green cape and
      else
        out = walking stick
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = stump seat with big leaf headband
      else if (mp2 == 3)
        out = green gown with leaf headband
      else if (mp2 == 2)
        out = thorn shield
      else
        out = thorn wrist bands
    }
    else
    {
      if (mp3 == 4)
        out = wolf cap
      else if (mp3 == 3)
        out = dark feather cape and cap
      else if (mp3 == 2)
        out = read forehead diamond and band
      else
        out = green forehead diamond
    }
  }
  else if (type == "farm")
  {
    if (mp1 == 5)
      out = dome glass top
    else if (mp2 == 5)
      out = gray and yellow bank
    else if (mp3 == 5)
      out = white pillar building
    else if (path == 1)
    {
      if (mp1 == 4)
        out = gray factory
      else if (mp1 == 3)
        out = four trees
      else if (mp1 == 2)
        out = gold rock border
      else
        out = gray rock border
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = light blue bank
      else if (mp2 == 3)
        out = wooden bank
      else if (mp2 == 2)
        out = gold fence
      else
        out = green bananas with wood fence
    }
    else
    {
      if (mp3 == 4)
        out = red roof gray shop
      else if (mp3 == 3)
        out = red tent shop
      else if (mp3 == 2)
        out = banana storage
      else
        out = wood storage next to tree
    }
  }
  else if (type == "spike") ; better descriptions ✔
  {
    if (mp1 == 5)
      out = big-ass 'splosions
    else if (mp2 == 5)
      out = involuntary spike-ralph
    else if (mp3 == 5)
      out = only thing worse than Legos to step on in the middle of night
    else if (path == 1)
    {
      if (mp1 == 4)
        out = skull spikes
      else if (mp1 == 3)
        out = spike balls
      else if (mp1 == 2)
        out = hot spikes
      else
        out = redneck
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = swirly
      else if (mp2 == 3)
        out = octogram mouth
      else if (mp2 == 2)
        out = tall vents
      else
        out = vents
    }
    else
    {
      if (mp3 == 4)
        out = quad gears
      else if (mp3 == 3)
        out = triple gears
      else if (mp3 == 2)
        out = double gears
      else
        out = blue accent
    }
  }
  else if (type == "village")
  {
    if (mp1 == 5)
      out = gray castle with projectile
    else if (mp2 == 5)
      out = huge white satelite
    else if (mp3 == 5)
      out = cabin villages and windmill
    else if (path == 1)
    {
      if (mp1 == 4)
        out = wood fort with red target
      else if (mp1 == 3)
        out = wood cabin with red flag
      else if (mp1 == 2)
        out = drums outside
      else
        out = red doorway and scrunchie
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = dark gray tower
      else if (mp2 == 3)
        out = light blue tower
      else if (mp2 == 2)
        out = double satelite
      else
        out = satelite
    }
    else
    {
      if (mp3 == 4)
        out = clock tower cabin
      else if (mp3 == 3)
        out = triple hut
      else if (mp3 == 2)
        out = banana sign
      else
        out = wood crates outside
    }
  }
  else if (type == "engineer")
  {
    if (mp1 == 5)
      out = purple visor with purple sentrys
    else if (mp2 == 5)
      out = shades with grey circuit helmet
    else if (mp3 == 5)
      out = yellow hat with huge trap
    else if (path == 1)
    {
      if (mp1 == 4)
        out = green visor with colored sentrys
      else if (mp1 == 3)
        out = black helmet with green accents
      else if (mp1 == 2)
        out = green arrow on helmet with red band wrench
      else
        out = green drill and sentrys
    }
    else if (path == 2)
    {
      if (mp2 == 4)
        out = white helmet and coat with blue accents
      else if (mp2 == 3)
        out = white helmet with blue pack
      else if (mp2 == 2)
        out = red helmet with yellow jacket
      else
        out = orange helmet
    }
    else
    {
      if (mp3 == 4)
        out = blue yellow hat with trap
      else if (mp3 == 3)
        out = yellow glasses with double guns
      else if (mp3 == 2)
        out = black hat with gloves
      else
        out = black gray hat
    }
  }
  else
    out = ERROR

  monkey[4] := [mp1, mp2, mp3]
  outputdebug, upgrading %type%  \\\  %mp1% %mp2% %mp3%
  to_return = %type%  ///  %out%
  return to_return
}
