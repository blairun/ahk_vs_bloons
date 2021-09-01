#include more_monkey/helper_monkey.ahk

; ***************************
; ***        notes        ***
; ***************************
; debug script/sandbox

; ***************************
; ***        issues       ***
; ***************************
; n/a

monkey_meadow_sandbox() ; monkey knowledge maxed
{
  info_hero(PAT(), A_LineFile)
  prep(MONKEY_MEADOW(), [EASY(), SANDBOX()])
  farm := farm(1136, 172, 3333311)
  send {space}
  hero := hero(661, 538)
  unlock_hero(hero, 20)
  um()
  to_bloon_panel()
  set_round(45)
  play_round()
}
