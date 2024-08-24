#
# Description:  Reset sound effect for the elevator
# Entity @s:    Block display elevator
#

function arena_elevator:util/uuid
data modify storage arena_elevator:sound input.tag set from storage arena_elevator:util uuid
data remove storage arena_elevator:util uuid

data modify storage arena_elevator:sound input merge from storage arena_elevator:. sound.moving
function arena_elevator:sound/stop with storage arena_elevator:sound input

data remove storage arena_elevator:sound input