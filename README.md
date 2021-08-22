# AHK vs Bloons

AutoHotKey scripts to interact with BTD6

## Setup

Download AutoHotKey - https://www.autohotkey.com/download/

Get BTD6 on PC/computer - https://store.steampowered.com/app/960090/Bloons_TD_6/ \
Play the game manually until all monkeys/towers are unlocked \
Unlock all 5 tiers on each of the 3 paths for every tower \
*- note - Level Up and New Hero notifications will interfere with automations, there is an open issue to fix this*

Download a debug viewer - ex: DebugView++ https://github.com/CobaltFusion/DebugViewPP \
OR \
Debug directly in Visual Studio Code using the AutoHotkey Plus extension

## How to

Launch the watcher - monkey.ahk in parent directory

Scripts are started with the function keys:

F1 | F2 | F3 | F4 | F5 | F6 | F7 | F8 | F9 | F10 | F11 | F12
-- | -- | -- | -- | -- | -- | -- | -- | -- | --- | --- | ---
go | | | | pause | menu | | unpause | debug | reload | temp | cursor

### go

Start the main script in monkey.ahk and the specefic function defined in map_mode.ahk

### reload

Stop any/all running scripts and attempt to reload or relaunch the script - implementing saved changes made

### pause

During main 'go' script pause to stop next round from starting

### unpause

Resume 'go' script, starting next round

### menu

Return to main menu from within a map/game *- note - should be used after pause or reload i.e. unadvisable to use while another automation is in progress*

### debug

Run the/a debug script

### temp

Run the/a temp script - ex: activating abilities behind the scenes, psuedo Tech Bot, save that Monkey Money for cash drops 😉

### cursor

Output information on cursor location: coordinates and pixel color

## Gotchas, Tips, Tricks, Hints, Helps

### Banana pickup

Set pickup points wider than farm locations, setting points to place location misses bananas sometimes, more points on the pickup path increase pickup consistency, find a happy medium, too many pickups cause longer waits at the end of the round slowing down automation
