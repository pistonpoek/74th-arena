#
# Description:  Place an tribute token arena item at the current position
#

execute align xyz positioned ~0.5 ~ ~0.5 run function arena_item:create
execute align xyz positioned ~0.5 ~ ~0.5 as @e[predicate=arena_item:arena_item_display,distance=..0.0001] run \
    data modify entity @s item set from storage arena_world:. token
execute align xyz positioned ~0.5 ~ ~0.5 as @e[predicate=arena_item:arena_item,distance=..0.0001] run \
    tag @s add arena_world_token
