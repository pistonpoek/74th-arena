#
# Description:  Create an arena item
#

summon minecraft:interaction ~ ~ ~ {Tags:[initiating_arena_item],Passengers:[{id:item_display}]}
execute as @e[predicate=arena_item:initiating_arena_item] run function arena_item:initiate