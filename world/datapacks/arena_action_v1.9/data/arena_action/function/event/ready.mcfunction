#
# Description:  Ready the arena and the tributes for battle
#

execute as @a[predicate=arena_action:tribute] run function arena_action:tribute/clean

execute if function arena_world:alive run \
    function arena_world:ready

function arena_action:world_border/ready

function arena_action:state/change {from:reset,to:ready}