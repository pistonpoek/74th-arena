#
# Description:  Reset the hunger games arena
# Entity @s:    Gamemaker
#

execute unless predicate arena_action:gamemaker run return fail

execute if function arena_world:alive run \
    function arena_world:countdown/reset

execute if function arena_elevator:alive run \
    function arena_elevator:reset

schedule clear arena_action:event/release

execute if function arena_world:alive run function arena_world:reset

execute as @e[predicate=arena_action:location_catacombs,limit=1] run function arena_action:location/return

execute as @a[predicate=arena_action:tribute] run function arena_action:tribute/clean

function arena_action:world_border/reset

kill @e[type=item]

function arena_action:death/count/reset

execute as @a[predicate=arena_action:tribute] run \
    function arena_action:death/count/add

function arena_action:state/remove {state:active}
function arena_action:state/remove {state:finish}
function arena_action:state/add {state:reset}