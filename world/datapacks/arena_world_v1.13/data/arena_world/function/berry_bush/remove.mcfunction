#
# Description:  Remove the berry bush marker
# Entity @s:    Berry bush marker to remove
#

execute unless predicate arena_world:berry_bush run return fail

kill @s