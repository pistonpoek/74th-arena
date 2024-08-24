#
# Description:  Create an action trigger
#
# Parameter:
# action
#

$data modify storage arena_action:. action.trigger append value {action:$(action)}

$scoreboard objectives add $(action) trigger

$function arena_action:action/trigger/reset {action:$(action)}