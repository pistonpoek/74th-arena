#
# Description:  Start the hunger games arena
# Entity @s:    Gamemaker
#

execute if function arena_world:alive run \
    execute as @e[predicate=arena_world:start_position] run function arena_world:start_position/open

title @a[predicate=arena_action:tribute] actionbar {"text":"May the odds be ever in your favor"}

# Remove saturation of players, assuming they were just fully saturated.
# Hunger removes 1 saturation point every 40 / amplifier. Hence 3 sec x amplifier 240 / 40 = 18 saturation points.
effect give @a[predicate=arena_action:tribute] minecraft:hunger 3 240 true

function arena_action:world_border/start

tag @a[predicate=arena_action:tribute] add alive

function arena_action:state/change {from:ready,to:active}