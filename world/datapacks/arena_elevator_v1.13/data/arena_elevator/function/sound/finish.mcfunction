#
# Description:  Play sound effect at the end of the lift
# Entity @s:    Block display elevator
#

function arena_elevator:sound/reset

function arena_elevator:util/uuid
data modify storage arena_elevator:sound input.tag set from storage arena_elevator:util uuid
data remove storage arena_elevator:util uuid

data modify storage arena_elevator:sound input merge from storage arena_elevator:. sound.finish

function arena_elevator:sound/play with storage arena_elevator:sound input

data remove storage arena_elevator:sound input