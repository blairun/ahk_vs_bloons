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
  dance()
  outputdebug, all done - took %mins% mins %secs% secs
  end(5)
  return
}

F1:: ; music / lets go
go()
return

F2:: ; speaker minus / unused
return

F3:: ; speaker plus / unused
return

F4:: ; speaker x / unused
return

F5:: ; stop / pause
outputdebug, pausing
pause, on
return

F6:: ; back / home screen
; need to pause or reload first
to_menu()
return

F7:: ; play pause / unused
return

F8:: ; play / unpause
outputdebug, playing
pause, off
return

F9:: ; mail / color debug
loop, 10
{
  pixelgetcolor, out, 1805, 1013
  outputdebug, play button color: %out%
  end(1)
}
return

F10:: ; home / reset reload
reload
return

F11:: ; lock / temp_monkey
temp_monkey()
return

F12:: ; get mouse location
mousegetpos, xpos, ypos
pixelgetcolor, out, xpos, ypos
outputdebug, cursor x: %xpos% y: %ypos%
outputdebug, color: %out%
outputdebug, %xpos%, %ypos%
return
