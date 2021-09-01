#include more_monkey/helper_monkey.ahk
; ***************************
; ***        notes        ***
; ***************************
; place all monkeys of a type, for writing better descriptions
; find and replace - current tower: dart

; ***************************
; ***        issues       ***
; ***************************
; following towers are too big (or water) for this map/setup:
; sub, ship, plane, heli, mortar, super, farm, village

ouch_sandbox()
{
  prep(OUCH(), [EASY(), SANDBOX()])
  click([846, 553]) ; get rid of the
  click([953, 630]) ; middle water
  one_paths()
  mixed_top()
  mixed_mid()
  mixed_low()
  pause()
}

delete(startx, starty, offsetx, offsety)
{
  x := startx
  loop, 6
  {
    y := starty
    loop, 4
    {
      sell([x, y])
      y += offsety
    }
    x += offsetx
  }
}

place_batch(startx, starty, offsetx, offsety
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
  ;pause()
  ;delete(startx, starty, offsetx, offsety)
}

one_paths()
{
  dart := dart(297, 137)
  place_batch(78, 310, 115, 115, [1, 2, 3], [1, 2, 3])
}

mixed_top()
{
  place_batch(675, 58, 155, 87, [2, 22, 3, 33], [1, 1, 1, 1])
}

mixed_mid()
{
  place_batch(675, 420, 155, 83, [1, 11, 3, 33], [2, 2, 2, 2])
}

mixed_low()
{
  place_batch(675, 766, 155, 87, [1, 11, 2, 22], [3, 3, 3, 3])
}
