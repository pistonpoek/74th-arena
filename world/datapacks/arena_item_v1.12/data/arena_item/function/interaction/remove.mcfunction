#
# Description:  Remove the interaction of the arena item
# Entity @s:    Interaction arena item to remove
#

execute unless predicate arena_item:arena_item run return fail

kill @s