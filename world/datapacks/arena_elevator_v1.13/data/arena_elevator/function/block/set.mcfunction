#
# Description:  Place a block at the top of the elevator
# Entity @s:    Block display elevator
#

data modify storage arena_elevator:block input.block set from entity @s block_state.Name

function arena_elevator:display/top_position
data modify storage arena_elevator:block input.y_position set from storage arena_elevator:temp top_position
data remove storage arena_elevator:temp top_position

execute at @s run function arena_elevator:block/place with storage arena_elevator:block input

data remove storage arena_elevator:block input