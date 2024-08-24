#
# Description:  Start the hunger games arena by 
# Entity @s:    Gamemaker
#

execute unless predicate arena_action:gamemaker run return fail

execute unless data storage arena_action:. state.reset run function arena_action:action/reset

function arena_action:event/ready

# Teleport tributes to start positions
execute as @a[predicate=arena_action:tribute] at @e[predicate=arena_world:start_position,sort=random] align xyz positioned ~0.5 ~ ~0.5 run \
    execute unless entity @a[predicate=arena_action:tribute,distance=..1] run tp @s ~ ~ ~ ~ ~

execute if function arena_world:alive run \
    function arena_world:countdown/start {time:10}

schedule function arena_action:event/release 10s