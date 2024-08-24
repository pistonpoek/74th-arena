#
# Description:  Remove the arena elevator block display
# Entity @s:    Block display created for elevator
#

execute unless predicate arena_elevator:arena_elevator run return fail

function arena_elevator:util/uuid
execute as @a run function arena_elevator:user/clear with storage arena_elevator:util
data remove storage arena_elevator:util uuid

kill @s