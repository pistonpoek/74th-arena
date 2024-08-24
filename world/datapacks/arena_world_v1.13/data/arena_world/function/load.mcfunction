#
# Description:  Load the arena world datapack
#

scoreboard objectives add arena_world_countdown dummy "Countdown"
scoreboard players set #time_step arena_world_countdown 1

function arena_world:animal/aquatic/load
function arena_world:animal/terrestrial/load

function arena_world:loot/load
function arena_world:token/load