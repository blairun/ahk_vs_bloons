upgrade_description(monkey, path)
{
  ; monkey = [x, y, tower_type, [0,0,0]] 4 var/array is how upgraded it is
  type := monkey[3]
  mp1 := monkey[4][1]
  mp2 := monkey[4][2]
  mp3 := monkey[4][3]

  switch path
  {
    case 1: mp1++
    case 2: mp2++
    case 3: mp3++
    default: outputdebug, ERROR -%path%- is not matching with 1 2 or 3
  }

  if (mp1 == 6 || mp2 == 6 || mp3 == 6)
    out = PARAGON
  else
  {
    if (mp1 == 5) {
      out_dart = orange accent balls
      out_rang = purple hood
      out_bomb = red and spikey
      out_tack = fire furnaces
      out_ice = diamond crest with purple body
      out_glue = green bodysuit
      out_sniper = full bush camouflage
      out_sub = black electricity
      out_ship = dark gray with double platforms
      out_plane = double black tail fins
      out_heli = plasma gunners
      out_mortar = gray with green accents
      out_dartling = red throne cannon
      out_wizard = all white with moon wand
      out_super = sun god
      out_ninja = black rice hat
      out_alchemist = bearded and spikey hair
      out_druid = white hood cloak on a cloud
      out_farm = dome glass top
      out_spike = black and red skull spike balls
      out_village = gray castle with projectile
      out_engineer = purple visor with purple sentrys
    }
    else if (mp2 == 5) {
      out_dart = triple plasma mask
      out_rang = green accent on cap
      out_bomb = black and green
      out_tack = blue blade top
      out_ice = blue body and with blue body
      out_glue = orange bodysuit with spider tank
      out_sniper = spider eyes camo helmet
      out_sub = red sub and monkey below deck
      out_ship = gray with green purple red accents
      out_plane = all gray quad propellar
      out_heli = dark gray sniper drop ability
      out_mortar = white hat with straight three cannons
      out_dartling = left and right huge cannons
      out_wizard = perma phoenix with wizard wings
      out_super = red accents
      out_ninja = huge black pack
      out_alchemist = blue fur and pink body
      out_druid = green with light eyes
      out_farm = gray and yellow bank
      out_spike = quad purple rim fans
      out_village = huge white satelite
      out_engineer = shades with grey circuit helmet
    }
    else if (mp3 == 5) {
      out_dart = black hood
      out_rang = fancy hair
      out_bomb = green base black and yellow
      out_tack = skull and crossbones
      out_ice = ice shoes and jumbo ice cannon
      out_glue = black suit with red twist tank cap
      out_sniper = long sleeves and pants with gas mask
      out_sub = yellow accents
      out_ship = shipping containers
      out_plane = huge black with six propellars
      out_heli = brown camo
      out_mortar = yellow accents with yellow goggles
      out_dartling = six barrel huge ride along
      out_wizard = dark skull throne
      out_super = full coverage suit
      out_ninja = black mask with red horns
      out_alchemist = jewel accents with red cape
      out_druid = red body and crazy eyes
      out_farm = white pillar building
      out_spike = all yellow unit
      out_village = cabin villages and windmill
      out_engineer = yellow hat with huge trap
    }
    else if (path == 1)
    {
      if (mp1 == 4) {
        out_dart = yellow accent balls
        out_rang = gray hood
        out_bomb = black with green accents
        out_tack = open flame
        out_ice = gray lightning headband with red body
        out_glue = dark blue bodysuit with quadruple glue cannisters
        out_sniper = leaves camouflage
        out_sub = black with green atomic nose
        out_ship = aircraft carrier
        out_plane = bomber shape
        out_heli = machine gun nose
        out_mortar = yellow with yellow gray bodysuit
        out_dartling = red bodysuit with yellow cannon
        out_wizard = purple cape
        out_super = yellow temple
        out_ninja = rice hat
        out_alchemist = helmet and double barrels
        out_druid = blue cloak with light eyes
        out_farm = gray factory
        out_spike = skull spike balls
        out_village = wood fort with red target
        out_engineer = green visor with colored sentrys
      }
      else if (mp1 == 3){
        out_dart = black spike balls
        out_rang = purple bodysuit
        out_bomb = red with yellow ring
        out_tack = yellow with fire
        out_ice = gray diamond headband
        out_glue = blue bodysuit with gas mask and green glue
        out_sniper = black hat with red accent gun
        out_sub = submerged with glass nose
        out_ship = triple cannon
        out_plane = full gray body
        out_heli = razor blades
        out_mortar = goggles on
        out_dartling = red helmet with yellow visor
        out_wizard = blue ball wand
        out_super = yellow sun bodysuit
        out_ninja = white suit and hood
        out_alchemist = orange jacket and goggles
        out_druid = light blue hood cloak
        out_farm = four trees
        out_spike = gray with red spikes unit
        out_village = wood cabin with red flag
        out_engineer = black helmet with green accents
      }
      else if (mp1 == 2) {
        out_dart = red tail band
        out_rang = red bodysuit
        out_bomb = double red ring
        out_tack = four tacks
        out_ice = gray snowflake headband
        out_glue = purple bodysuit
        out_sniper = purple hat with gray vest
        out_sub = green fins and binoculars
        out_ship = gray boat
        out_plane = gray nose and fins
        out_heli = gray body
        out_mortar = white cannon
        out_dartling = black barrels
        out_wizard = blue wide brim hat
        out_super = plasma triple mask
        out_ninja = black bodysuit with red bands
        out_alchemist = green potion
        out_druid = blue band with green cape and
        out_farm = gold rock border
        out_spike = red unit
        out_village = drums outside
        out_engineer = green arrow on helmet with red band wrench
      }
      else{
        out_dart = green tail band
        out_rang = red x on cap
        out_bomb = red ring
        out_tack = three tacks
        out_ice = snowflake forehead
        out_glue = gray hat
        out_sniper = red hat
        out_sub = green hat
        out_ship = pirate flag
        out_plane = double red stripe
        out_heli = quad shooter
        out_mortar = cannon yellow rim
        out_dartling = red dot
        out_wizard = blue hat
        out_super = red laser visor
        out_ninja = headband
        out_alchemist = backpack
        out_druid = walking stick
        out_farm = gray rock border
        out_spike = red top rim
        out_village = red doorway and scrunchie
        out_engineer = green drill and sentrys
      }
    }
    else if (path == 2)
    {
      if (mp2 == 4) {
        out_dart = blue do-rag
        out_rang = yellow accent on bodysuit
        out_bomb = black and red
        out_tack = gray blade top
        out_ice = white coat and blue scarf
        out_glue = huge tank
        out_sniper = radio with red antenna ball
        out_sub = red belly with black top
        out_ship = double skull gray sails
        out_plane = gray with black wing tips and green tail
        out_heli = double blade
        out_mortar = triple cannon
        out_dartling = black bodysuit with green accents
        out_wizard = red phoenix hat with red wand
        out_super = red eyes with green accents
        out_ninja = black suit spider mask
        out_alchemist = beard and spikey hair and goggles off
        out_druid = stump seat with big leaf headband
        out_farm = light blue bank
        out_spike = purple and quad fan unit
        out_village = dark gray tower
        out_engineer = white helmet and coat with blue accents
      }
      else if (mp2 == 3) {
        out_dart = black do-rag
        out_rang = bionic arm
        out_bomb = yellow
        out_tack = blades
        out_ice = brown coat and red scarf
        out_glue = yellow bodysuit with big nozzle
        out_sniper = full camo gear
        out_sub = red fins and missles
        out_ship = sail and pirate hook
        out_plane = twin propellar
        out_heli = blue accents
        out_mortar = gray cannon
        out_dartling = purple helmet with rocket launcher
        out_wizard = red outfit with fire ball wand
        out_super = gray bodysuit double shooter
        out_ninja = green hood suit with pack
        out_alchemist = white coat with goggles on
        out_druid = green gown with leaf headband
        out_farm = wooden bank
        out_spike = black base and purple unit
        out_village = light blue tower
        out_engineer = white helmet with blue pack
      }
      else if (mp2 == 2) {
        out_dart = red headband
        out_rang = gray bodysuit with double red line on cap
        out_bomb = red and grey missle
        out_tack=tall base
        out_ice = red hat
        out_glue = orange bodysuit
        out_sniper = explosion decal
        out_sub = red nose
        out_ship = fire grapes
        out_plane = dark helmet goggles on
        out_heli = blue helmet with goggles on
        out_mortar = gray base
        out_dartling = green barrels and gloves
        out_wizard = red wide brim hat with red gloves
        out_super = gray wrists with gray head gear
        out_ninja = black bodysuit with green accent
        out_alchemist = black gloves and mask
        out_druid = thorn shield
        out_farm = gold fence
        out_spike = black unit with taller vents
        out_village = double satelite
        out_engineer = red helmet with yellow jacket
      }
      else {
        out_dart = green headband
        out_rang = red line on cap
        out_bomb = red fins
        out_tack = flat top
        out_ice = earmuffs
        out_glue = orange nozzle with black tank
        out_sniper = blue hat with night vision goggles
        out_sub = red accent on bow
        out_ship = grapes on board
        out_plane = yellow rings
        out_heli = yellow tail fins
        out_mortar = yellow handle
        out_dartling = purple cannon
        out_wizard = black and red hat
        out_super = cape and wrist gold accents
        out_ninja = black ninja star symbol
        out_alchemist = white gloves
        out_druid = thorn wrist bands
        out_farm = green bananas with wood fence
        out_spike = purple feat with side vents
        out_village = satelite
        out_engineer = orange helmet
      }
    }
    else
    {
      if (mp3 == 4) {
        out_dart = black crossbow
        out_rang = camo safari hat
        out_bomb = black base
        out_tack = black
        out_ice = ice armor
        out_glue = gray bodysuit with overfilled shooters and tank
        out_sniper = black helmet
        out_sub = pointed nose
        out_ship = red ship
        out_plane = all black quad propellar
        out_heli = gray camo body
        out_mortar = red fire cannon
        out_dartling = four barrel ride along
        out_wizard = green accent skull wand
        out_super = black helmet
        out_ninja = full red mask
        out_alchemist = wide brim hat
        out_druid = wolf cap
        out_farm = red roof gray shop
        out_spike = yellow accents with quad gears
        out_village = clock tower cabin
        out_engineer = blue yellow hat with trap
      }
      else if (mp3 == 3) {
        out_dart = wood crossbow
        out_rang = cream safari hat
        out_bomb = green and yellow
        out_tack = red sixteen shooter
        out_ice = ice cannon with gray earmuffs
        out_glue = white bodysuit with pink glue and double nozzle
        out_sniper = headphones
        out_sub = triple guns
        out_ship = orange turbin
        out_plane = black wings with jet engines
        out_heli = double green wing accents
        out_mortar = cannon red rim
        out_dartling = blue helmet
        out_wizard = purple accent hooded cloak
        out_super = dark bodysuit and cape
        out_ninja = monster mask with red eyebrows
        out_alchemist = gray and gold outfit
        out_druid = dark feather cape and cap
        out_farm = red tent shop
        out_spike = blue unit with triple gears
        out_village = triple hut
        out_engineer = yellow glasses with double guns
      }
      else if (mp3 == 2) {
        out_dart = red arm bands
        out_rang = orange bodysuit
        out_bomb = red explosion
        out_tack = twelve shooters
        out_ice = blue shades
        out_glue = pink bodysuit
        out_sniper = orange hat
        out_sub = yellow rear
        out_ship = lookout nest
        out_plane = all red
        out_heli = gray with green wing accents
        out_mortar = red helmet
        out_dartling = single triple barrel with yellow helmet accents
        out_wizard = wide brim hat with glasses
        out_super = double yellow line with hero mask
        out_ninja = black bodysuit white star plaque
        out_alchemist = blue visor goggles
        out_druid = read forehead diamond and band
        out_farm = banana storage
        out_spike = double gears
        out_village = banana sign
        out_engineer = black hat with gloves
      }
      else{
        out_dart = green arm bands
        out_rang = red fingerless gloves
        out_bomb = red target
        out_tack = ten shooters
        out_ice = gray gloves
        out_glue = glue splatter on head
        out_sniper = gray hat
        out_sub = double shooter
        out_ship = yellow cannon ring
        out_plane = red wing tips
        out_heli = yellow arrow wing accents
        out_mortar = headset
        out_dartling = stabilize legs
        out_wizard = big ball magic
        out_super = yellow line cap
        out_ninja = blue ninja star head plaque
        out_alchemist = visor goggles
        out_druid = green forehead diamond
        out_farm = wood storage next to tree
        out_spike = blue bottom unit
        out_village = wood crates outside
        out_engineer = black gray hat
      }
    }
  }
  switch type 
  {
    case "dart" : out = %out_dart%
    case "rang" : out = %out_rang%
    case "bomb" : out = %out_bomb%
    case "tack" : out = %out_tack%
    case "ice" : out = %out_ice%
    case "glue" : out = %out_glue%
    case "sniper" : out = %out_sniper%
    case "sub" : out = %out_sub%
    case "ship" : out = %out_ship%
    case "plane" : out = %out_plane%
    case "heli" : out = %out_heli%
    case "mortar" : out = %out_mortar%
    case "dartling" : out = %out_dartling%
    case "wizard" : out = %out_wizard%
    case "super" : out = %out_super%
    case "ninja" : out = %out_ninja%
    case "alchemist" : out = %out_alchemist%
    case "druid" : out = %out_druid%
    case "farm" : out = %out_farm%
    case "spike" : out = %out_spike%
    case "village" : out = %out_village%
    case "engineer" : out = %out_engineer%
    default: out = ERROR
  }

  monkey[4] := [mp1, mp2, mp3]
  outputdebug, upgrading %type% \\\ %mp1% %mp2% %mp3%
  to_return = %type% /// %out%
  return to_return
}
