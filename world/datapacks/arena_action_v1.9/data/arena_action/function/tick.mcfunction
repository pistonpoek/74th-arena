#
# Description:  Update arena actions
# 

# Check for action triggers
data modify storage arena_action:action check_trigger set from storage arena_action:. action.trigger
function arena_action:action/trigger/tick
data remove storage arena_action:action check_trigger

# Check for deaths
function arena_action:death/tick