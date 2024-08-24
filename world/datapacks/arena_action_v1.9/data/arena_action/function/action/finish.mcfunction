#
# Description:  Finish the battle by crowning the victor
#

execute unless data storage arena_action:. state.active run return fail

function arena_action:state/remove {state:active}

execute as @a[tag=victor] run tag @s remove victor

execute as @a[predicate=arena_action:alive_tribute] run tag @s add victor

execute as @a[predicate=arena_action:alive_tribute,tag=victor,limit=1,sort=random] at @s rotated as @s positioned ^ ^5 ^5 run \
    tp @a[predicate=arena_action:tribute,gamemode=spectator] ~ ~ ~ facing entity @s

# If multiple tributes are alive when called
execute as @a[predicate=arena_action:alive_tribute,tag=victor,limit=1] at @s \
    if entity @a[predicate=arena_action:alive_tribute,tag=victor,distance=0.001..] run \
    tellraw @a "Ladies and gentlemen, may I present the winners of the 74th hunger games"

# If one tribute is alive when called
execute as @a[predicate=arena_action:alive_tribute,tag=victor,limit=1] at @s \
    unless entity @a[predicate=arena_action:alive_tribute,tag=victor,distance=0.001..] run \
    tellraw @a "Ladies and gentlemen, may I present the winner of the 74th hunger games"