#
# Description:  Check interaction arena item for interaction
# Entity @s:    Interaction arena item to check
#

execute unless predicate arena_item:arena_item run return fail

execute if entity @s[nbt={interaction:{}}] run function arena_item:interaction/interact