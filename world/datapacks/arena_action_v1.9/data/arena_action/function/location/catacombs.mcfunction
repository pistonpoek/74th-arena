#
# Description:  Move the catacombs spawn location to here.
#

execute unless predicate arena_action:location_catacombs summon marker run tag @s add arena_action_location_catacombs

execute align xyz positioned ~0.5 ~ ~0.5 run tp @e[predicate=arena_action:location_catacombs] @s