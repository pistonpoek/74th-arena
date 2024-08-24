#
# Description:  Move the cornucopia center view location to here.
#

execute unless predicate arena_action:location_cornucopia summon marker run tag @s add arena_action_location_cornucopia

execute align xyz positioned ~0.5 ~ ~0.5 run tp @e[predicate=arena_action:location_cornucopia] @s