#
# Description:  Start the hunger games arena by launching tributes inside their tribute tubes
# Entity @s:    Gamemaker
#

execute unless predicate arena_action:gamemaker run return fail

execute unless data storage arena_action:. state.reset run function arena_action:action/reset

function arena_action:event/ready

execute if function arena_elevator:alive run \
    execute as @e[predicate=arena_elevator:arena_elevator] run function arena_elevator:lift

execute if function arena_world:alive run \
    function arena_world:countdown/start {time:20}

schedule function arena_action:event/release 20s