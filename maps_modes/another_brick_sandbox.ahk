#include more_monkey/helper_monkey.ahk
; ***************************
; ***        notes        ***
; ***************************
; place all monkeys of a type, for writing better descriptions
; plane, heli, mortar, super, farm, village

; ***************************
; ***        issues       ***
; ***************************
; n/a

fifth_tier()
{
  startx = 885
  x = startx
  y = 705
  offsetx = 225
  loop, 3
  {
    upgrade_string := ""
    loop, 5
    {
      upgrade_string = %A_Index%%upgrade_string%
    }
    place(plane, x, y, upgrade_string)
    x += offsetx
  }
  pause()
  x = startx
  loop, 3
  {
    sell([x, y])
    x += offsetx
  }
}

upgrade_group(path_tier)
{
  return
}

another_brick_sandbox()
{
  prep(off_the_coast(), [EASY(), SANDBOX()])
  plane(798, 163)
  fifth_tier()
  upgrade_group(11)
  upgrade_group(12)
  upgrade_group(13)
  upgrade_group(14)
  upgrade_group(21)
  upgrade_group(22)
  upgrade_group(23)
  upgrade_group(24)
  upgrade_group(31)
  upgrade_group(32)
  upgrade_group(33)
  upgrade_group(34)
}

place_batch2(startx, starty, offsetx, offsety
  , start_strings, add_strings)
{
  rows := start_strings.maxindex()
  outputdebug, rows -> %rows%
  outputdebug, cols -> %cols%
  y := starty
  x := startx
  loop, %rows%
  {
    x := startx
    start_string := start_strings[A_Index]
    add_string := add_strings[A_Index]
    dart := dart(x, y, start_string)
    upgrade_string := add_string
    upgrade_string = %start_string%%upgrade_string%
    loop, 4
    {
      x += offsetx
      dart := dart(x, y, upgrade_string)
      upgrade_string = %upgrade_string%%add_string%
    }
    y += offsety
  }
}
