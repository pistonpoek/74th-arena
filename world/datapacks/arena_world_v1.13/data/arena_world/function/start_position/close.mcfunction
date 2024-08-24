#
# Description:  Close the start position
# Entity @s:    Arena world start position marker
#

execute unless predicate arena_world:start_position run return fail

# Update the elevator tube blocks to close
execute at @s run fill ~-1 ~ ~ ~-1 ~1 ~ minecraft:barrier
execute at @s run fill ~1 ~ ~ ~1 ~1 ~ minecraft:barrier
execute at @s run fill ~ ~ ~1 ~ ~1 ~1 minecraft:barrier
execute at @s run fill ~ ~ ~-1 ~ ~1 ~-1 minecraft:barrier