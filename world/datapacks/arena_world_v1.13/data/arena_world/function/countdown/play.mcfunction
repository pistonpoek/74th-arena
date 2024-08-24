#
# Description:  Play the countdown from the currently set #time in scoreboard arena_world_countdown
#

execute if score #time arena_world_countdown matches ..0 run \
    return run function arena_world:countdown/reset

# Set the time value from the scoreboard time value
execute store result storage arena_world:countdown time int 1 run \
    scoreboard players get #time arena_world_countdown
execute as @e[predicate=arena_world:countdown] run \
    function arena_world:countdown/set with storage arena_world:countdown
data remove storage arena_world:countdown time

execute if score #time arena_world_countdown matches ..10 run \
    function arena_world:countdown/sound

# Decrement the time by one, to call play again
scoreboard players operation #time arena_world_countdown -= #time_step arena_world_countdown

schedule function arena_world:countdown/play 1s replace
