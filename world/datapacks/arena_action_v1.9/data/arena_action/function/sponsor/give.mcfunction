#
# Description:  Give held item to a player with the specified name
# Entity @s:    Gamemaker approving the sponsering of a tribute
#
# Parameters:
# name
#

execute unless predicate arena_action:gamemaker run return fail

data modify storage arena_action:sponsor input.item set from entity @s SelectedItem
$execute as $(name) run function arena_action:util/give with storage arena_action:sponsor input
data remove storage arena_action:sponsor input