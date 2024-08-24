#
# Description:  Run the control lift
# Entity @s:    Block display elevator
#

function arena_elevator:util/uuid
data modify storage arena_elevator:control input.uuid set from storage arena_elevator:util uuid
data remove storage arena_elevator:util uuid

execute store result storage arena_elevator:control input.duration int 1 run function arena_elevator:control/duration

execute at @s summon area_effect_cloud run function arena_elevator:control/guard with storage arena_elevator:control input

execute store result storage arena_elevator:control input.duration int 1 run function arena_elevator:control/duration
function arena_elevator:control/schedule with storage arena_elevator:control input

data remove storage arena_elevator:control input