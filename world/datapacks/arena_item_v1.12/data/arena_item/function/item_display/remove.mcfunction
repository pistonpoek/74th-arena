#
# Description:  Remove the item display
# Entity @s:    Arena item display to remove
#

execute unless predicate arena_item:arena_item_display run return fail

kill @s