#
# Description:  Preview entity spawners with the specified tag
#
# Parameters:
# tag
#

execute as @e[predicate=arena_world:entity_spawner] run function arena_world:entity_spawner/clear_preview

$execute as @e[predicate=arena_world:entity_spawner,tag=$(tag)] run function arena_world:entity_spawner/show_preview {id:allay}