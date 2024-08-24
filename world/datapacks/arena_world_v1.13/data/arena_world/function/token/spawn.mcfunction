#
# Description:  Spawn tribute tokens into the world.
#

execute as @e[predicate=arena_world:entity_spawner,tag=tribute_token] \
    at @s run function arena_world:token/place