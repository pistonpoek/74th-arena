#
# Description:  Remove the full interaction arena item
# Entity @s:    Interaction arena item to remove
#

execute unless predicate arena_item:arena_item run return fail

execute on passengers run function arena_item:item_display/remove
function arena_item:interaction/remove