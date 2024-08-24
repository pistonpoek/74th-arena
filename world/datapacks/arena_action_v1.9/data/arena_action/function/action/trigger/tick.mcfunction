#
# Description:  Check if any of the triggers have been used.
#

execute unless data storage arena_action:action check_trigger[0] run return 1

function arena_action:action/trigger/check with storage arena_action:action check_trigger[0]

data remove storage arena_action:action check_trigger[0]

function arena_action:action/trigger/tick