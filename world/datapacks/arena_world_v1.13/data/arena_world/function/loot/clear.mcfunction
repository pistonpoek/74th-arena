#
# Description:  Remove all placed arena loot items
#

execute as @e[predicate=arena_item:arena_item,tag=arena_world_loot] run function arena_item:remove