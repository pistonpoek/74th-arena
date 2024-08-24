#
# Description:  Check if an arena elevator is in progress
# Entity @s:    Block display elevator
#

function arena_elevator:util/uuid
return run function arena_elevator:control/has_guard with storage arena_elevator:util
data remove storage arena_elevator:util uuid