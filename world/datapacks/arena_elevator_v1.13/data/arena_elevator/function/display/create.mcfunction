#
# Description:  Make the block display an arena elevator
# Entity @s:    Block display
#
# Parameters:   
# block
# height
#

execute unless entity @s[type=block_display] run return fail

tag @s add arena_elevator

$data modify entity @s block_state.Name set value $(block)

$scoreboard players set @s arena_elevator_height $(height)

function arena_elevator:display/lower