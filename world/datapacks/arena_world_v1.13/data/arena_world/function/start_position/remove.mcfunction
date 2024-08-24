#
# Description:  Remove the executing arena world start position marker
# Entity @s:    Arena world start position marker
#

execute unless predicate arena_world:start_position run return fail

kill @s