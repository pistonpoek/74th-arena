#
# Description:  Check if tribute died
# Entity @s:    Tribute to check death for
#

execute unless predicate arena_action:tribute run return fail

execute if score @s arena_world_death matches 1.. run function arena_action:death/on_death