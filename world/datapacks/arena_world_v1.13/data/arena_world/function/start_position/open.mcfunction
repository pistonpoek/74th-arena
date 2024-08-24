#
# Description:  Open the start position
# Entity @s:    Arena world start position marker
#

execute unless predicate arena_world:start_position run return fail

# Update the start position blocks to open
execute at @s run fill ~-1 ~ ~ ~-1 ~1 ~ minecraft:air
execute at @s run fill ~1 ~ ~ ~1 ~1 ~ minecraft:air
execute at @s run fill ~ ~ ~1 ~ ~1 ~1 minecraft:air
execute at @s run fill ~ ~ ~-1 ~ ~1 ~-1 minecraft:air