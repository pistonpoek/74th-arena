#
# Description:  Play sound effects during the lift
#

execute as @e[predicate=arena_elevator:arena_elevator] \
    if entity @s[tag=arena_elevator_lifting] run \
    function arena_elevator:sound/elevator
