#
# Description:  Remove all action trigger scoreboards.
#

execute unless data storage arena_action:. action.trigger[0] run return 1

function arena_action:action/trigger/remove with storage arena_action:. action.trigger[0]

data remove storage arena_action:. action.trigger[0]

function arena_action:action/trigger/uninstall