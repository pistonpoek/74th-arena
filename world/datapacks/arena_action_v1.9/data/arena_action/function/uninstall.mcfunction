#
# Description:  Uninstall the arena actions datapack
#

execute as @a[predicate=arena_action:gamemaker] run function arena_action:gamemaker/remove

function arena_action:district/uninstall

function arena_action:action/trigger/uninstall

function arena_action:state/uninstall

function arena_action:world_border/uninstall