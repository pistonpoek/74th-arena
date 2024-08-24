#
# Description:  Play sound effects during the lift
# Entity @s:    Block display elevator
#

data modify storage arena_elevator:sound input merge from storage arena_elevator:. sound.start

function arena_elevator:util/uuid
data modify storage arena_elevator:sound input.tag set from storage arena_elevator:util uuid
data remove storage arena_elevator:util uuid

function arena_elevator:sound/play with storage arena_elevator:sound input

data remove storage arena_elevator:sound input

schedule function arena_elevator:sound/moving 2s append