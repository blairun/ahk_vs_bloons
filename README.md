# AHK vs Bloons

AutoHotKey scripts to interact with BTD6

## Setup

Download AutoHotKey - https://www.autohotkey.com/download/

Get BTD6 on PC/computer - https://store.steampowered.com/app/960090/Bloons_TD_6/

Download a debug viewer - ex: DebugView++ https://github.com/CobaltFusion/DebugViewPP

## How to

Launch the watcher - monkey.ahk in parent directory

Scripts are started with the function keys:

F1 | F2 | F3 | F4 | F5 | F6 | F7 | F8 | F9 | F10 | F11 | F12
-- | -- | -- | -- | -- | -- | -- | -- | -- | --- | --- | ---
go | unused | unused | unused | pause | menu | unused | unpause | debug | reload | temp | cursor

### go

Start the main script in monkey.ahk and the specefic function defined in map_mode.ahk

### reload

Stop any/all running scripts and attempt to reload or relaunch the script - implementing saved changes made

### pause

During main 'go' script pause to stop next round from starting

### unpause

Resume 'go' script, starting next round

### menu

Return to main menu from within a map/game *- note - should be used after pause or reload, when there are no running scripts*

### debug

Run a debug script

### temp

Run a temp script - ex: activating abilities behind the scenes

### cursor

Output information on cursor location: coordinates and pixel color
