#
# Description:  Reset the berry bush
# Entity @s:    Berry bush marker to reset berry bush for
#

execute unless predicate arena_world:berry_bush run return fail

execute at @s unless block ~ ~ ~ sweet_berry_bush run say No sweet berry bush found at berry bush marker, placing berry bush.

function arena_world:berry_bush/set_age {age:3}