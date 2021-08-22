#include more_monkey/constant_monkey.ahk
#include more_monkey/upgrade_monkey.ahk

global always_ability := [false]
global bananas_pickup := [false]

reset_globs()
{
  global always_ability := [false]
  global bananas_pickup := [false]
}

um()
{
  sleep, 150
}

pause()
{
  outputdebug, pausing
  pause, on
}

move(x, y)
{
  mousemove, %x%, %y%
  um()
}

color(x=1805, y=1013)
{
  pixelgetcolor, out, %x%, %y%, slow
  ; debug only
  ;if (x != 1805 || y != 1013)
    ;outputdebug, pixelgetcolor @[%x%, %y%] - %out%
  return out
}

died() ; question mark
{
  if (color() == 0x574853)
  {
    outputdebug, defeated
    pause()
  }
}

check()
{
    return (color() != 0xFFFFFF)
}

double_check()
{
  if check()
  {
    um()
    died()
    if check()
    {
      um()
      died()
      outputdebug, next
      return 1
    }
  }
  return 0
}

wait_um(c) ; this wait should be -> c * um()
{
  loop, %c%
  {
    um()
  }
}

ability(n, a=0)
{
  if (a == 0)
    outputdebug, ability %n%
  send {%n%}
  um()
}

auto_ability()
{
  i = 2
  l := always_ability.maxindex()
  out = |
  while i <= l
  {
    ability(always_ability[i], 1)
    i := i - 1
    out = %out% %i%
    i := i + 2
  }
  outputdebug, %out%
}

continue()
{
  dance()
  wait()
  click([961, 908])
  wait(1)
  click([961, 908])
  wait(1)
  click([1121, 857])
  wait(1)
  click([1121, 857])
}

yes_paragon()
{
  click([1131, 724])
}

banana_pickup()
{
  global bananas_pickup
  l := bananas_pickup.maxindex()
  if (bananas_pickup[1])
  {
    i := 2
    while i < l
    {
      move(bananas_pickup[i], bananas_pickup[i + 1])
      i := i + 2
    }
  }
}

wait(s=0) ; s isn't 1 second (just a PSA)
{         ; gets longer as the b nay pickup points increase
  if (s == 0) ; wait round end
  {
    while double_check() == 0
    {
      auto_ability()
      banana_pickup()
    }
  }
  else
  {
    if (s != 1)
      outputdebug, wait %s%
    loop, %s%
    {
      loop, 2
      {
        sleep, 500
        banana_pickup()
      }
    }
  }
}

key(i)
{
  send {%i%}
  um()
}

click(a)
{
  one := a[1]
  two := a[2]
  mouseclick, left, one, two
  um()
}

drag(start, end)
{
  mouseclickdrag, left, start[1], start[2], end[1], end[2]
}

place(t, x, y, tower, ups="")
{
  outputdebug, placing %tower%
  key(t)
  click([x, y])
  tower_info_array := [x, y, tower, [0,0,0]]
  if (ups != "")
  {
    upgrade(tower_info_array, ups)
  }
  return tower_info_array
}

sell(who)
{
  tower := who[3]
  outputdebug, selling %tower%
  click(who)
  send {backspace}
  um()
}

hero(x, y)
{
  place("u", x, y, A_ThisFunc)
}

unlock_hero(hero, levels)
{
  outputdebug, unlock hero x%levels%
  click(hero)
  loop, %levels%
    key(",")
}

info_hero(info, filename)
{
  outputdebug, |
  splitpath, filename,,,, trim
  stringupper, all_caps, trim
  outputdebug, map and mode *%all_caps%*
  if (info == none)
    return
  info1 := info[1]
  info2 := info[2]
  outputdebug, select %info1% the %info2% hero
  click([606, 940])
  wait_um(3)
  if (info[5] == 1)
  {
    drag([1601, 983], [106, 973])
    um()
    drag([1601, 983], [106, 973])
    um()
  }
  click([info[3], info[4]])
  um()
  click([635, 672])
  um()
  send {esc}
  um()
}

dart(x, y, upgrades="")
{
  return place("q", x, y, A_ThisFunc, upgrades)
}

rang(x, y, upgrades="")
{
  return place("w", x, y, A_ThisFunc, upgrades)
}

bomb(x, y, upgrades="")
{
  return place("e", x, y, A_ThisFunc, upgrades)
}

tack(x, y, upgrades="")
{
  return place("r", x, y, A_ThisFunc, upgrades)
}

ice(x, y, upgrades="")
{
  return place("t", x, y, A_ThisFunc, upgrades)
}

glue(x, y, upgrades="")
{
  return place("y", x, y, A_ThisFunc, upgrades)
}

sniper(x, y, upgrades="")
{
  return place("z", x, y, A_ThisFunc, upgrades)
}

sub(x, y, upgrades="")
{
  return place("x", x, y, A_ThisFunc, upgrades)
}

ship(x, y, upgrades="")
{
  return place("c", x, y, A_ThisFunc, upgrades)
}

plane(x, y, upgrades="")
{
  return place("v", x, y, A_ThisFunc, upgrades)
}

heli(x, y, upgrades="")
{
  return place("b", x, y, A_ThisFunc, upgrades)
}

mortar(x, y, upgrades="")
{
  return place("n", x, y, A_ThisFunc, upgrades)
}

dartling(x, y, upgrades="")
{
  return place("m", x, y, A_ThisFunc, upgrades)
}

wizard(x, y, upgrades="")
{
  return place("a", x, y, A_ThisFunc, upgrades)
}

super(x, y, upgrades="")
{
  return place("s", x, y, A_ThisFunc, upgrades)
}

ninja(x, y, upgrades="")
{
  return place("d", x, y, A_ThisFunc, upgrades)
}

alchemist(x, y, upgrades="")
{
  return place("f", x, y, A_ThisFunc, upgrades)
}

druid(x, y, upgrades="")
{
  return place("g", x, y, A_ThisFunc, upgrades)
}

farm(x, y, upgrades="")
{
  return place("h", x, y, A_ThisFunc, upgrades)
}

spike(x, y, upgrades="")
{
  return place("j", x, y, A_ThisFunc, upgrades)
}

village(x, y, upgrades="")
{
  return place("k", x, y, A_ThisFunc, upgrades)
}

engineer(x, y, upgrades="")
{
  return place("l", x, y, A_ThisFunc, upgrades)
}

targeting(who, c, optional="")
{
  x := who[1]
  y := who[2]
  tower := who[3]
  outputdebug, cycling %tower% targeting by %c%
  click([x, y])
  loop, %c%
  {
    send, {tab}
    um()
  }
  if (optional == "lefty")
    click([357, 284])
  else if (optional == "righty")
    click([89, 289])
  if (optional != "")
    outputdebug, switching %tower% to %optional%
  click([x, y])
}

targeting_dartling(a, tx, ty)
{
  outputdebug, setting dartling target
  click(a)
  mousemove, tx, ty
  um()
  send, {tab}
  um()
  click(a)
}

targeting_mortar(a, tx, ty)
{
  outputdebug, setting mortar target
  click(a)
  send, {tab}
  um()
  click([tx, ty])
  click(a)
}

targeting_heli(a, tx, ty, right=1) ; menu open side
{
  outputdebug, setting heli target
  click(a)
  send, {tab}
  um()
  if (right == 1)
  {
    click([1443, 378])
  }
  else
  {
    click([244, 382])
  }
  click([tx, ty])
  click(a)
}

upgrade(a, p)
{
  click(a)
  loop, parse, p
  {
    if (A_LoopField == 1)
    {
      key(",")
    }
    else if (A_LoopField == 2)
    {
      key(".")
    }
    else
    {
      key("/")
    }
    note := upgrade_description(a, A_LoopField)
    um()
  }
  outputdebug, |     now %note%
  send {esc}
  um()
}

start()
{
  loop, 2
  {
    send {space}
    um()
  }
}

ok(round)
{
  wait()
  um()
  send {space}
  um()
  outputdebug, round - %round%
}

to_bloon_panel()
{
  outputdebug, to bloon panel
  click([1710, 1012])
  wait(1)
}

set_round(round)
{
  outputdebug, set round to %round%
  click([1727, 125])
  send %round%
  wait(1)
}

play_round()
{
  outputdebug, play round
  click([1832, 110])
  wait(1)
}

dance(count=3)
{
  loop, %count%
  {
    mousemove, 960, 500
    mousemove, 1000, 540
    mousemove, 960, 580
    mousemove, 920, 540
  }
}

end(count=3)
{
  dance(count)
  outputdebug, |
  reset_globs()
  outputdebug, *** ALL DONE ***
  click([920, 540])
  wait(1)
  click([1031, 905])
  wait(1)
  click([791, 858])
  outputdebug, |
}

to_map(map)
{
  outputdebug, select map
  if (map[1] <= 2)
  {
    click(ADVANCED())
  }
  else
  {
    click(INTERMEDIATE())
  }
  um()
  clicks := map[2]
  loop, %clicks%
  {
    click(DIFFICULTY()[map[1]])
    um()
  }
  click([COL()[map[4]], ROW()[map[3]]])
  um()
}

to_mode(mode)
{
  outputdebug, select mode
  click(mode[1])
  um()
  click(mode[2])
  wait(1)
  if (color(1088, 726) == 0x00E262) ; ok button
  {
    outputdebug, overwrite save
    click([1088, 726]) ; ok button
  }
  wait(4)
}

almost_there()
{
  click([957, 747])
  wait(1)
  send {esc}
  wait(1)
  if (color(1290, 334) != 0xFFD400) ; auto start
  {
    outputdebug, toggle auto start
    click([1290, 334])
    wait(1)
  }
  send {esc}
  wait(1)
}

prep(map, mode)
{
  um()
  click(PLAY())
  um()
  to_map(map)
  to_mode(mode)
  almost_there()
  outputdebug, |
  outputdebug, *** GO TIME ***
  outputdebug, |
}

to_menu()
{
  outputdebug, back to main menu
  send {esc}
  wait_um(2)
  click([845,847])
  um()
  reload
}
