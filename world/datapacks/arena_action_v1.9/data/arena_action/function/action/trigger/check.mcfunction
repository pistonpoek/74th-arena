#
# Description:  Check if action trigger has been used
#
# Parameters:
# action
#

$execute as @a[predicate=arena_action:gamemaker] if score @s $(action) matches 1.. run \
    function arena_action:action/$(action)

$function arena_action:action/trigger/reset {action:$(action)}