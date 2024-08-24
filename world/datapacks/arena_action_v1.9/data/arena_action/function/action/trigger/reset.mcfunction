#
# Description:  Reset an action trigger for all gamemakers
#
# Parameter:
# action
#

$scoreboard players reset @a[predicate=arena_action:gamemaker] $(action)
$scoreboard players enable @a[predicate=arena_action:gamemaker] $(action)