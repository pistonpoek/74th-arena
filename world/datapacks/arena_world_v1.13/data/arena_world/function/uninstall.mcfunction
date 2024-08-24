#
# Description:  Uninstall the arena world datapack
#

execute as @e[predicate=arena_world:berry_bush] run function arena_world:berry_bush/remove

execute as @e[predicate=arena_world:campfire] run function arena_world:campfire/remove

scoreboard objectives remove arena_world_countdown
execute as @e[predicate=arena_world:countdown] run function arena_world:countdown/remove

execute as @e[predicate=arena_world:elevator] run function arena_world:elevator/remove

execute as @e[predicate=arena_world:entity] run function arena_world:entity_spawner/remove

execute as @e[predicate=arena_world:entity_preview] run function arena_world:entity_spawner/kill_preview

execute as @e[predicate=arena_world:start_position] run function arena_world:start_position/remove

function arena_world:animal/aquatic/uninstall
function arena_world:animal/terrestrial/uninstall

function arena_world:loot/uninstall
function arena_world:token/uninstall