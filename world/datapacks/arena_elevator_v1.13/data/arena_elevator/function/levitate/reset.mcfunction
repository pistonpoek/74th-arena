#
# Description:  Reset levitation for the elevator
# Entity @s:    Block display elevator
#

function arena_elevator:util/uuid
data modify storage arena_elevator:levitate input.uuid set from storage arena_elevator:util uuid
data remove storage arena_elevator:util uuid

function arena_elevator:levitate/clear with storage arena_elevator:levitate input

data remove storage arena_elevator:levitate input