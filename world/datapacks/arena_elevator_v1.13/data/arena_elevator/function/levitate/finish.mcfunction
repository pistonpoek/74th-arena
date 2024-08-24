#
# Description:  Finish the levitation lift
# Entity @s:    Block display elevator
#

function arena_elevator:util/uuid
data modify storage arena_elevator:levitate input.uuid set from storage arena_elevator:util uuid
data remove storage arena_elevator:util uuid

function arena_elevator:levitate/clear with storage arena_elevator:levitate input

function arena_elevator:levitate/y_position
data modify storage arena_elevator:levitate input.y_position set from storage arena_elevator:temp y_position
data remove storage arena_elevator:temp y_position

function arena_elevator:levitate/tp with storage arena_elevator:levitate input

data remove storage arena_elevator:levitate input