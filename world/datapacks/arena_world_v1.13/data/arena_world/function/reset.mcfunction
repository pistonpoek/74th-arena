#
# Description:  Reset the world to replay the arena
#

execute as @e[predicate=arena_world:berry_bush] run function arena_world:berry_bush/reset

execute as @e[predicate=arena_world:campfire] run function arena_world:campfire/reset

execute as @e[predicate=arena_world:elevator] run function arena_world:elevator/open

execute as @e[predicate=arena_world:entity] run function arena_world:entity_spawner/kill

execute as @e[predicate=arena_world:entity_spawner] run function arena_world:entity_spawner/clear_preview

function arena_world:loot/clear

execute as @e[predicate=arena_world:start_position] run function arena_world:start_position/close

function arena_world:token/clear
function arena_world:token/spawn