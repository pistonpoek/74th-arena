#
# Description:  Spawn loot into the arena.
#
# Parameters:
# tag
# amount
#

$execute as @e[predicate=arena_world:entity_spawner,tag=$(tag),limit=$(amount),sort=random] \
    at @s run function arena_world:loot/place