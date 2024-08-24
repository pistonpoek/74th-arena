#
# Description:  Run the levitation lift
# Entity @s:    Block display elevator
#

data modify storage arena_elevator:levitate input.speed set from storage arena_elevator:. settings.speed

function arena_elevator:util/uuid
data modify storage arena_elevator:levitate input.uuid set from storage arena_elevator:util uuid
data remove storage arena_elevator:util uuid

function arena_elevator:levitate/apply with storage arena_elevator:levitate input

data remove storage arena_elevator:levitate input