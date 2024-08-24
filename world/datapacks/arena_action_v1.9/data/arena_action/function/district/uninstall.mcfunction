#
# Description:  Remove all the district teams
#

# Return if there are no teams
execute unless data storage arena_action:district teams[0] run return 1

# Remove the district with the stored team number
data modify storage arena_action:district input.district set from storage arena_action:district teams[0]
function arena_action:district/remove with storage arena_action:district input
data remove storage arena_action:district input

# Continue to remove the first district team, until none are left
execute if data storage arena_action:district teams[0] run function arena_action:district/uninstall