#
# Description:  Handle interaction of interaction arena item
# Entity @s:    Interaction arena item with interaction
#

execute unless predicate arena_item:interacted run return fail

function arena_item:item_display/pickup
function arena_item:remove