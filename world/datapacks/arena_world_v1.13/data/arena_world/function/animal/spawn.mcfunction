#
# Description:  Spawn animals into the arena.
#
# Parameters
# id
# place [water | land]
# amount
# nbt
#

$execute as @e[predicate=arena_world:entity_spawner,tag=$(place),limit=$(amount),sort=random] run function arena_world:entity_spawner/spawn {id:$(id),nbt:$(nbt)}