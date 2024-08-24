#
# Description:  Close the elevator door
# Entity @s:    Arena world elevator marker
#

execute unless predicate arena_world:elevator run return fail

# Update the elevator tube blocks to close
execute at @s run fill ^ ^ ^ ^ ^2 ^ minecraft:light_gray_stained_glass_pane
execute at @s run fill ^ ^ ^1 ^ ^2 ^1 minecraft:light_gray_stained_glass
execute at @s run fill ^ ^ ^2 ^ ^2 ^2 minecraft:light_gray_stained_glass_pane
execute at @s run fill ^1 ^ ^2 ^1 ^2 ^2 minecraft:light_gray_stained_glass
execute at @s run fill ^2 ^ ^2 ^2 ^2 ^2 minecraft:light_gray_stained_glass_pane

# Remove the pressure plate
execute at @s run setblock ^1 ^ ^1 minecraft:air

# Play a sound that the elevator closes
execute at @s positioned ^1 ^ ^1 run playsound minecraft:entity.breeze.land block @a[distance=..8] ~ ~ ~ 2 0.3
execute at @s positioned ^1 ^ ^1 run playsound minecraft:entity.breeze.land block @a[distance=..8] ~ ~ ~ 2 0.3
execute at @s positioned ^1 ^ ^1 run playsound minecraft:block.grindstone.use block @a[distance=..8] ~ ~ ~ 0.2 1.3