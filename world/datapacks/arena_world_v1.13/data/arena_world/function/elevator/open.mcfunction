#
# Description:  Open the elevator door
# Entity @s:    Arena world elevator marker
#

execute unless predicate arena_world:elevator run return fail

# Update the elevator tube blocks to open
execute at @s run fill ^ ^ ^ ^ ^2 ^ minecraft:light_gray_stained_glass
execute at @s run fill ^ ^ ^1 ^ ^2 ^1 minecraft:light_gray_stained_glass_pane
execute at @s run fill ^ ^ ^2 ^ ^2 ^2 minecraft:air
execute at @s run fill ^1 ^ ^2 ^1 ^2 ^2 minecraft:light_gray_stained_glass_pane
execute at @s run fill ^2 ^ ^2 ^2 ^2 ^2 minecraft:light_gray_stained_glass

# Place a pressure plate
execute at @s run setblock ^1 ^ ^1 minecraft:polished_blackstone_pressure_plate