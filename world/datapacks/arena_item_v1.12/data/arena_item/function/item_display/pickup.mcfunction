#
# Description:  Let target player pickup item
# Entity @s:    Interaction arena item to pickup item for
#

execute unless predicate arena_item:interacted run return fail

execute on passengers run data modify storage arena_item:item_display pickup.item set from entity @s item
execute on target run function arena_item:util/give with storage arena_item:item_display pickup
data remove storage arena_item:item_display pickup