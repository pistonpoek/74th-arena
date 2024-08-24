#
# Description:  Combine UUID string and store them in arena_elevator:util uuid storage
#
# Parameters:
# UUID0
# UUID1
# UUID2
# UUID3
#

$data modify storage arena_elevator:util uuid set value $(UUID0)$(UUID1)$(UUID2)$(UUID3)