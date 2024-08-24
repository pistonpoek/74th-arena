#
# Description:  Get string uuid from entity
# Entity @s:    Entity to store string uuid from in arena_elevator:util uuid storage
#

data modify storage arena_elevator:util_uuid input.UUID0 set from entity @s UUID[0]
data modify storage arena_elevator:util_uuid input.UUID1 set from entity @s UUID[1]
data modify storage arena_elevator:util_uuid input.UUID2 set from entity @s UUID[2]
data modify storage arena_elevator:util_uuid input.UUID3 set from entity @s UUID[3]

function arena_elevator:util/support/combine_uuid with storage arena_elevator:util_uuid input

data remove storage arena_elevator:util_uuid input