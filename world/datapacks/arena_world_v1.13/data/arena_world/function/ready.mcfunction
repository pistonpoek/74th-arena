#
# Description:  Ready the world for a battle
#

execute as @e[predicate=arena_world:berry_bush] run function arena_world:berry_bush/reset
execute as @e[predicate=arena_world:campfire] run function arena_world:campfire/reset

function arena_world:loot/ready