#include maps_modes/map_mode.ahk
#include more_monkey/temp_monkey.ahk

go()
{
  start := A_TickCount
  map_mode()
  end := A_TickCount
  elapsed := (end - start)//1000
  mins := elapsed//60
  secs := mod(elapsed, 60)
  wait()
  outputdebug, all done - took %mins% mins %secs% secs
  end()
  return
}

F1:: ; lets go - 1 like start or begining
go()
return

F2:: ; temp script - pick a 2sday
temp_monkey()
return

F3::
return

F4::
return

F5:: ; pause - 5 stopping right in the middle
pause()
return

F6:: ; continue - 6 is after 5
outputdebug, playing
pause, off
return

F7::
return

F8::
return

F9::
return

F10:: ; reset reload - 10 has a 0 fresh slate
reload
return

F11:: ; to menu - 11 kind of unique use case like a prime
; need to pause or reload first
to_menu()

return

F12:: ; get mouse location - 12 not between 1 and 10 used for coding
mousegetpos, xpos, ypos
pixelgetcolor, out, xpos, ypos
outputdebug, cursor x: %xpos% y: %ypos%
outputdebug, color: %out%
clipboard = %xpos%, %ypos%
outputdebug, %clipboard% - copied to buffer, ready to paste!
return
