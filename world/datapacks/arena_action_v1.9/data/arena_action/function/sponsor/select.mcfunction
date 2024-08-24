#
# Description:  Select the current item held as the sponsor item
# Entity @s:    Gamemaker approving the sponsering of a tribute
#

execute unless predicate arena_action:gamemaker run return fail

data modify storage arena_action:. selected_sponsor_item.item set from entity @s SelectedItem