#
# Description:  Play a sound for the elevator lifting
# Entity @s:    Block display elevator
#

schedule function arena_elevator:sound/moving 1s append

data modify storage arena_elevator:sound input set from storage arena_elevator:. sound.moving

function arena_elevator:util/uuid
data modify storage arena_elevator:sound input.tag set from storage arena_elevator:util uuid
data remove storage arena_elevator:util uuid

function arena_elevator:sound/play with storage arena_elevator:sound input

data remove storage arena_elevator:sound input