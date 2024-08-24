#
# Description:  Change from a state to a different state
# State value can be checked by if data storage arena_action.state.$(state)
#
# Parameters:
# from
# to
#

$data remove storage arena_action:. state.$(from)
$data modify storage arena_action:. state.$(to) set value {}