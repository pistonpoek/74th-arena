#
# Description:  Set the countdown to a specific string
#
# Parameters:
# time
#

$scoreboard players set #time arena_world_countdown $(time)

$execute as @e[predicate=arena_world:countdown] run function arena_world:countdown/display {text:$(time)}