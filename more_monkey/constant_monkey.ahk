PLAY()
{
  return [831,  928]
}

BEGINNER()
{
  return [576,  974]
}
INTERMEDIATE()
{
  return [836,  979]
}
ADVANCED()
{
  return [1076, 980]
}
EXPERT()
{
  return [1337, 978]
}

DIFFICULTY()
{
  return [BEGINNER(), INTERMEDIATE(), ADVANCED(), EXPERT()]
}

ROW_1()
{
  return 255
}
ROW_2()
{
  return 565
}
COL_1()
{
  return 526
}
COL_2()
{
  return 956
}
COL_3()
{
  return 1382
}

ROW()
{
  return [ROW_1(), ROW_2()]
}
COL()
{
  return [COL_1(), COL_2(), COL_3()]
}

; MAP() { return [difficulty, page, row, column] }

; begin page 1
MONKEY_MEADOW()
{
  return [1, 1, 1, 1]
}
TREE_STUMP()
{
  return [1, 1, 1, 2]
}
TOWN_CENTER()
{
  return [1, 1, 1, 3]
}
RESORT()
{
  return [1, 1, 2, 1]
}
SKATES()
{
  return [1, 1, 2, 2]
}
LOTUS_ISLAND()
{
  return [1, 1, 2, 3]
}
; begin page 2
CANDY_FALLS()
{
  return [1, 2, 1, 1]
}
WINTER_PARK()
{
  return [1, 2, 1, 2]
}
CARVED()
{
  return [1, 2, 1, 3]
}
PARK_PATH()
{
  return [1, 2, 2, 1]
}
ALPINE_RUN()
{
  return [1, 2, 2, 2]
}
FROZEN_OVER()
{
  return [1, 2, 2, 3]
}
; begin page 3
IN_THE_LOOP()
{
  return [1, 3, 1, 1]
}
CUBISM()
{
  return [1, 3, 1, 2]
}
FOUR_CIRCLES()
{
  return [1, 3, 1, 3]
}
HEDGE()
{
  return [1, 3, 2, 1]
}
END_OF_THE_ROAD()
{
  return [1, 3, 2, 2]
}
LOGS()
{
  return [1, 3, 2, 3]
}
; interm page 1
BLOONARIUS_PRIME()
{
  return [2, 1, 1, 1]
}
BALANCE()
{
  return [2, 1, 1, 2]
}
ENCRYPTED()
{
  return [2, 1, 1, 3]
}
BAZAAR()
{
  return [2, 1, 2, 1]
}
ADORAS_TEMPLE()
{
  return [2, 1, 2, 2]
}
SPRING_SPRING()
{
  return [2, 1, 2, 3]
}
; interm page 2
KARTSNDARTS()
{
  return [2, 2, 1, 1]
}
MOON_LANDING()
{
  return [2, 2, 1, 2]
}
HAUNTED()
{
  return [2, 2, 1, 3]
}
DOWNSTREAM()
{
  return [2, 2, 2, 1]
}
FIRING_RANGE()
{
  return [2, 2, 2, 2]
}
CRACKED()
{
  return [2, 2, 2, 3]
}
; interm page 3
STREAMBED()
{
  return [2, 3, 1, 1]
}
CHUTES()
{
  return [2, 3, 1, 2]
}
RAKE()
{
  return [2, 3, 1, 3]
}
SPICE_ISLANDS()
{
  return [2, 3, 2, 1]
}
; adv page 1
X_FACTOR()
{
  return [3, 1, 1, 1]
}
MESA()
{
  return [3, 1, 1, 2]
}
GEARED()
{
  return [3, 1, 1, 3]
}
SPILLWAY()
{
  return [3, 1, 2, 1]
}
CARGO()
{
  return [3, 1, 2, 2]
}
PATS_POND()
{
  return [3, 1, 2, 3]
}
; adv page 2
PENINSULA()
{
  return [3, 2, 1, 1]
}
HIGH_FINANCE()
{
  return [3, 2, 1, 2]
}
ANOTHER_BRICK()
{
  return [3, 2, 1, 3]
}
OFF_THE_COAST()
{
  return [3, 2, 2, 1]
}
CORNFIELD()
{
  return [3, 2, 2, 2]
}
UNDERGROUND()
{
  return [3, 2, 2, 3]
}
; exp page 1
SANCTUARY()
{
  return [4, 1, 1, 1]
}
RAVINE()
{
  return [4, 1, 1, 2]
}
FLOODED_VALLEY()
{
  return [4, 1, 1, 3]
}
INFERNAL()
{
  return [4, 1, 2, 1]
}
BLOODY_PUDDLES()
{
  return [4, 1, 2, 2]
}
WORKSHOP()
{
  return [4, 1, 2, 3]
}
; exp page 2
QUAD()
{
  return [4, 2, 1, 1]
}
DARK_CASTLE()
{
  return [4, 2, 1, 2]
}
MUDDY_PUDDLES()
{
  return [4, 2, 1, 3]
}
OUCH()
{
  return [4, 2, 2, 1]
}

EASY()
{
  return [625,  404]
}
MEDIUM()
{
  return [964,  411]
}
HARD()
{
  return [1291, 405]
}

SANDBOX() ; coords are for easy sandsbox
{
  return [961, 729]
}

STANDARD()
{
  return [630,  584]
}
PRIMARY()
{
  return [963,  460]
}
DEFLATION()
{
  return [1273, 463]
}
MILITARY()
{
  return [963,  460]
}
APOPALYPSE()
{
  return [1273, 463]
}
REVERSE()
{
  return [961,  737]
}
MAGIC()
{
  return [963,  460]
}
DOUBLE()
{
  return [1273, 463]
}
ALTERNATE()
{
  return [961,  737]
}
HALF_CASH()
{
  return [1599, 451]
}
IMPOPPABLE()
{
  return [1283, 744]
}
CHIMPS()
{
  return [1606, 748]
}

; heros
QUINC()
{
  return [A_ThisFunc, "rookie crossbow", 106, 973, 0]
}
GWEN()
{
  return [A_ThisFunc, "can't-see-camo fire shooter", 106, 973, 0]
}
STRIKE()
{
  return [A_ThisFunc, "rpg/cannon kaboomer", 323, 971, 0]
}
OBYN()
{
  return [A_ThisFunc, "spirit of nature", 542, 972, 0]
}
PSI()
{
  return [A_ThisFunc, "meditation psionic", 745, 971, 0]
}
CAP()
{
  return [A_ThisFunc, "tank", 970, 975, 0]
}
BEN()
{
  return [A_ThisFunc, "stay-out-of-the-fray", 1165, 983, 0]
}
EZ()
{
  return [A_ThisFunc, "voodoozy", 1380, 980, 0]
}
PAT()
{
  return [A_ThisFunc, "bare hand smasher", 876, 978, 1]
}
DORA()
{
  return [A_ThisFunc, "priesthood and light", 1096, 975, 1]
}
BRICK()
{
  return [A_ThisFunc, "'whoop whoop' sea ship gunner", 1307, 980, 1]
}
DRONE()
{
  return [A_ThisFunc, "drones dude", 1524, 983, 1]
}
SAU()
{
  return [A_ThisFunc, "double-sword slayer", 1730, 979, 1]
}
