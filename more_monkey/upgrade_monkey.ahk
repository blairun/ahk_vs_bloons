upgrade_description(monkey, path)
{
  ; monkey = [x, y, tower_type, [0,0,0]] 4 var/array is how upgraded it is
  type := monkey[3]
  path1_upgrades := monkey[4][1]
  path2_upgrades := monkey[4][2]
  path3_upgrades := monkey[4][3]

  switch path
  {
    case 1:
      mp1++
      pathX_upgrades := mp1
    case 2:
      mp2++
      pathX_upgrades := mp2
    case 3:
      mp3++
      pathX_upgrades := mp3
    default: outputdebug, ERROR -%path%- is not matching with 1 2 or 3
  }

  switch 5 ; is tower becoming or already tier 5?
  {
    case mp1:
      path = 1
      pathX_upgrades = 5
    case mp2:
      path = 2
      pathX_upgrades = 5
    case mp3:
      path = 3
      pathX_upgrades = 5
    default: path := path
  }
  upgrade = %type%%path%%pathX_upgrades%

  switch upgrade
  {
    case RegExMatch(upgrade, ".*6.*"): out = PARAGON MUHAHAHA

    case "dart11": out = green tail
    case "dart12": out = red tail
    case "dart13": out = spike balls
    case "dart14": out = yellow accent balls
    case "dart21": out = green headband
    case "dart22": out = red headband
    case "dart23": out = black do-rag
    case "dart24": out = blue do-rag
    case "dart31": out = green arm bands
    case "dart32": out = red arm bands
    case "dart33": out = wood crossbow
    case "dart34": out = black crossbow
    case "dart15": out = big jugger
    case "dart25": out = little tiny plasma monkey
    case "dart35": out = crossbow professional

    case "rang11": out = x
    case "rang12": out = glaives
    case "rang13": out = purple suit
    case "rang14": out = gray hood
    case "rang21": out = line
    case "rang22": out = gray suit double line
    case "rang23": out = bionic arm
    case "rang24": out = dark bionic
    case "rang31": out = gloves
    case "rang32": out = red outlines
    case "rang33": out = safari hat
    case "rang34": out = green hat
    case "rang15": out = Lord, Accept Our True Devotion
    case "rang25": out = "permanent super fast"
    case "rang35": out = on point hairdo cobber

    case "bomb11": out = ring
    case "bomb12": out = double ring
    case "bomb13": out = red and yellow
    case "bomb14": out = black and green
    case "bomb21": out = red fins
    case "bomb22": out = gray
    case "bomb23": out = yellow
    case "bomb24": out = black and red
    case "bomb31": out = target
    case "bomb32": out = explosion
    case "bomb33": out = yellow muzzle
    case "bomb34": out = bigger and bumpier
    case "bomb15": out = KO
    case "bomb25": out = Moab Eliminator, 'nuff said
    case "bomb35": out = large ... in charge

    case "tack11": out = three tacks (or two blades... ?! okay... strange)
    case "tack12": out = four tacks (... or three blades?! SMH)
    case "tack13": out = yellow
    case "tack14": out = open flame
    case "tack21": out = flat top
    case "tack22": out = tall base
    case "tack23": out = sawzall
    case "tack24": out = spinny point collar
    case "tack31": out = ten
    case "tack32": out = twelve
    case "tack33": out = red
    case "tack34": out = black
    case "tack15": out = GREAT BALLS OF FIRE!
    case "tack25": out = saw-y pointy spinny . . . YOUCH!!
    case "tack35": out = attack of the stack of tacks

    case "ice11": out =  snowflake head
    case "ice12": out =  snowflake headband
    case "ice13": out =  diamond headband
    case "ice14": out =  warm blooded
    case "ice21": out =  earmuffs
    case "ice22": out =  hat
    case "ice23": out =  coat
    case "ice24": out =  eyes closed
    case "ice31": out =  gloves
    case "ice32": out =  shades
    case "ice33": out =  ice cannon
    case "ice34": out =  ice armor
    case "ice15": out =  purple blooded?!
    case "ice25": out =  ice mask, the frozen nightmare
    case "ice35": out =  jumbo icicle rocket launcher

    case "glue11": out = little hat, probs staying on with glue
    case "glue12": out = purple
    case "glue13": out = blue suit
    case "glue14": out = dark blue suit
    case "glue21": out = orange tank cap
    case "glue22": out = orange
    case "glue23": out = yellow suit
    case "glue24": out = double tank
    case "glue31": out = glue splatter
    case "glue32": out = pink
    case "glue33": out = white suit
    case "glue34": out = gray suit
    case "glue15": out = gooey green
    case "glue25": out = medusa + glue gunner = this
    case "glue35": out = Wait. All the other glues weren't super?

    case "sniper11": out = red
    case "sniper12": out = purple
    case "sniper13": out = black hat
    case "sniper14": out = leafy hat
    case "sniper21": out = night vision
    case "sniper22": out = explosion
    case "sniper23": out = camo hat
    case "sniper24": out = little radio antenna
    case "sniper31": out = gray
    case "sniper32": out = orange
    case "sniper33": out = ppe
    case "sniper34": out = ppe 2.0 - combat helmet
    case "sniper15": out = full bush [o_o] hehe
    case "sniper25": out = spider eyes
    case "sniper35": out = ppe 3.0 - gas mask!

    case "sub11": out = green hat
    case "sub12": out = green fins and binoculars
    case "sub13": out = submerged with glass nose
    case "sub14": out = black with green atomic nose
    case "sub21": out = red accent on bow
    case "sub22": out = red nose
    case "sub23": out = red fins and missles
    case "sub24": out = red belly with black top
    case "sub31": out = double shooter
    case "sub32": out = yellow rear
    case "sub33": out = triple guns
    case "sub34": out = pointed nose
    case "sub15": out = black electricity
    case "sub25": out = red sub and monkey below deck
    case "sub35": out = yellow accents

    case "ship11": out = pirate flag
    case "ship12": out = gray boat
    case "ship13": out = triple cannon
    case "ship14": out = aircraft carrier
    case "ship21": out = grapes on board
    case "ship22": out = fire grapes
    case "ship23": out = sail and pirate hook
    case "ship24": out = double skull gray sails
    case "ship31": out = yellow cannon ring
    case "ship32": out = lookout nest
    case "ship33": out = orange turbin
    case "ship34": out = red ship
    case "ship15": out = dark gray with double platforms
    case "ship25": out = gray with green purple red accents
    case "ship35": out = shipping containers

    case "plane11": out = double red stripe
    case "plane12": out = gray nose and fins
    case "plane13": out = full gray body
    case "plane14": out = bomber shape
    case "plane21": out = yellow rings
    case "plane22": out = dark helmet goggles on
    case "plane23": out = twin propellar
    case "plane24": out = gray with black wing tips and green tail
    case "plane31": out = red wing tips
    case "plane32": out = all red
    case "plane33": out = black wings with jet engines
    case "plane34": out = all black quad propellar
    case "plane15": out = double black tail fins
    case "plane25": out = all gray quad propellar
    case "plane35": out = huge black with six propellars

    case "heli11": out = quad shooter
    case "heli12": out = gray body
    case "heli13": out = razor blades
    case "heli14": out = machine gun nose
    case "heli21": out = yellow tail fins
    case "heli22": out = blue helmet with goggles on
    case "heli23": out = blue accents
    case "heli24": out = double blade
    case "heli31": out = yellow arrow wing accents
    case "heli32": out = gray with green wing accents
    case "heli33": out = double green wing accents
    case "heli34": out = gray camo body
    case "heli15": out = plasma gunners
    case "heli25": out = dark gray sniper drop ability
    case "heli35": out = brown camo

    case "mortar11": out = cannon yellow rim
    case "mortar12": out = white cannon
    case "mortar13": out = goggles on
    case "mortar14": out = yellow with yellow gray bodysuit
    case "mortar21": out = yellow handle
    case "mortar22": out = gray base
    case "mortar23": out = gray cannon
    case "mortar24": out = triple cannon
    case "mortar31": out = headset
    case "mortar32": out = red helmet
    case "mortar33": out = cannon red rim
    case "mortar34": out = red fire cannon
    case "mortar15": out = gray with green accents
    case "mortar25": out = white hat with straight three cannons
    case "mortar35": out = yellow accents with yellow goggles

    case "dartling11": out = red dot
    case "dartling12": out = ensigna
    case "dartling13": out = red helmet
    case "dartling14": out = yellow beam
    case "dartling21": out = triangle
    case "dartling22": out = green triangle
    case "dartling23": out = purple helmet
    case "dartling24": out = black helmet
    case "dartling31": out = stabilizers
    case "dartling32": out = lines
    case "dartling33": out = blue helmet
    case "dartling34": out = double double
    case "dartling15": out = throne
    case "dartling25": out = bigger is better
    case "dartling35": out = straight six

    case "wizard11": out = blue
    case "wizard12": out = moon and brim
    case "wizard13": out = blue wand
    case "wizard14": out = purple cape
    case "wizard21": out = red
    case "wizard22": out = firewall
    case "wizard23": out = fire wand
    case "wizard24": out = wings
    case "wizard31": out = purple
    case "wizard32": out = jewel
    case "wizard33": out = hooded
    case "wizard34": out = skulls
    case "wizard15": out = Rhesus Proboscis Wooly Baboon Dumbledore
    case "wizard25": out = perma-phoenix
    case "wizard35": out = grim reaper

    case "super11": out = red laser visor
    case "super12": out = plasma triple mask
    case "super13": out = yellow sun bodysuit
    case "super14": out = yellow temple
    case "super21": out = cape and wrist gold accents
    case "super22": out = gray wrists with gray head gear
    case "super23": out = gray bodysuit double shooter
    case "super24": out = red eyes with green accents
    case "super31": out = yellow line cap
    case "super32": out = double yellow line with hero mask
    case "super33": out = dark bodysuit and cape
    case "super34": out = black helmet
    case "super15": out = sun god
    case "super25": out = red accents
    case "super35": out = full coverage suit

    case "ninja11": out = white headband
    case "ninja12": out = red headband
    case "ninja13": out = hood
    case "ninja14": out = rice hat
    case "ninja21": out = black ninja star
    case "ninja22": out = green ninja star
    case "ninja23": out = secret scroll
    case "ninja24": out = four-eyes
    case "ninja31": out = blue ninja star
    case "ninja32": out = silver ninja star
    case "ninja33": out = masquerade
    case "ninja34": out = full red mask
    case "ninja15": out = grand master
    case "ninja25": out = one-eyed wonder
    case "ninja35": out = operation intimidation

    case "alchemist11": out = backpack
    case "alchemist12": out = green potion
    case "alchemist13": out = barrel pack
    case "alchemist14": out = double barrel
    case "alchemist21": out = white gloves
    case "alchemist22": out = gas mask
    case "alchemist23": out = goggles on
    case "alchemist24": out = mad scientest
    case "alchemist31": out = visor goggles
    case "alchemist32": out = purple visor
    case "alchemist33": out = dark gray
    case "alchemist34": out = black and gold
    case "alchemist15": out = merry mountain man
    case "alchemist25": out = bad influence
    case "alchemist35": out = the future is bright

    case "druid11": out = walking stick
    case "druid12": out = enhanced walking stick
    case "druid13": out = hood
    case "druid14": out = eyeless
    case "druid21": out = thorn wrist bands
    case "druid22": out = thorn shield
    case "druid23": out = leafy tiara
    case "druid24": out = leaf crown
    case "druid31": out = green diamond
    case "druid32": out = read diamond
    case "druid33": out = black getup
    case "druid34": out = a little possessed
    case "druid15": out = cloud nine
    case "druid25": out = Grandmother Willow
    case "druid35": out = full freakin' demon

    case "farm11": out = gray rock border
    case "farm12": out = gold rock border
    case "farm13": out = four trees
    case "farm14": out = gray factory
    case "farm21": out = green bananas with wood fence
    case "farm22": out = gold fence
    case "farm23": out = wooden bank
    case "farm24": out = light blue bank
    case "farm31": out = wood storage next to tree
    case "farm32": out = banana storage
    case "farm33": out = red tent shop
    case "farm34": out = red roof gray shop
    case "farm15": out = dome glass top
    case "farm25": out = gray and yellow bank
    case "farm35": out = white pillar building

    case "spike11": out = redneck
    case "spike12": out = hot spikes
    case "spike13": out = spike balls
    case "spike14": out = skull spikes
    case "spike21": out = vents
    case "spike22": out = tall vents
    case "spike23": out = octogram mouth
    case "spike24": out = swirly
    case "spike31": out = blue accent
    case "spike32": out = double gears
    case "spike33": out = triple gears
    case "spike34": out = quad gears
    case "spike15": out = big-ass 'splosions
    case "spike25": out = involuntary spike-ralph
    case "spike35": out = only thing worse than Legos to step on in the middle of night

    case "village11": out = red doorway and scrunchie
    case "village12": out = drums outside
    case "village13": out = wood cabin with red flag
    case "village14": out = wood fort with red target
    case "village21": out = satelite
    case "village22": out = double satelite
    case "village23": out = light blue tower
    case "village24": out = dark gray tower
    case "village31": out = wood crates outside
    case "village32": out = banana sign
    case "village33": out = triple hut
    case "village34": out = clock tower cabin
    case "village15": out = gray castle with projectile
    case "village25": out = huge white satelite
    case "village35": out = cabin villages and windmill

    case "engineer11": out = green nailer
    case "engineer12": out = green chevron
    case "engineer13": out = double chevron
    case "engineer14": out = goggles
    case "engineer21": out = pencil ready
    case "engineer22": out = white pencil
    case "engineer23": out = bubbles
    case "engineer24": out = blue-ish gun
    case "engineer31": out = gray
    case "engineer32": out = work gloves
    case "engineer33": out = double troble
    case "engineer34": out = trap
    case "engineer15": out = exploding construction equipment
    case "engineer25": out = computer aided cleaning
    case "engineer35": out = black [hole] box

    default: out = ERROR
  }

  monkey[4] := [mp1, mp2, mp3]
  outputdebug, upgrading %type%  \\\  %mp1% %mp2% %mp3%
  return_string = %type%  ///  %out%
  return return_string
}
