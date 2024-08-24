#
# Description:  Keep the wolves angry, until all wolves are gone.
#

execute unless entity @e[type=wolf,predicate=arena_world:entity] run return 1

execute as @e[type=wolf,predicate=arena_world:entity] at @s run \
    data modify entity @s AngryAt set from entity @p[gamemode=!spectator,gamemode=!creative] UUID

execute run schedule function arena_world:threat/wolf/keep_angry 37t replace