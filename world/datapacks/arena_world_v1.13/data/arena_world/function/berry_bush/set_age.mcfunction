#
# Description:  Set the berry bush age
# Entity @s:    Berry bush marker to set age berry bush for
#
# Parameters
# age 0..3
#

execute unless predicate arena_world:berry_bush run return fail

$execute at @s run setblock ~ ~ ~ sweet_berry_bush[age=$(age)]