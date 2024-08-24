#
# Description:  Code to execute on tribute death
# Entity @s:    Tribute that died
#

scoreboard players reset @s arena_world_death

title @s actionbar {"text":"Here's some advice. Stay alive."}

# If the battle is not active then return the player to the catacombs
execute unless data storage arena_action:. state.active run return run \
    tp @s @e[predicate=arena_action:location_catacombs,sort=nearest,limit=1]

gamemode spectator @s

tag @s remove alive

function arena_action:death/count/remove

title @s title {"text":"You died","color":"#EC2020"}

execute unless entity @e[predicate=arena_action:alive_tribute] run function arena_action:action/finish

tp @s @e[predicate=arena_action:location_cornucopia,sort=nearest,limit=1]

execute if entity @a[predicate=arena_action:tribute] run \
    spectate @a[predicate=arena_action:tribute,sort=nearest,limit=1]

execute as @a run function arena_action:death/canon