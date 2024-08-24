#
# Description:  Reset the countdown to be cleared
#

function arena_world:countdown/set {time:0}

execute as @e[predicate=arena_world:countdown] run function arena_world:countdown/display {text:""}