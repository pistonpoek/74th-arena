#
# Description:  Add a district team
#
# Parameters:
# district
#

$data modify storage arena_action:district teams append value $(district)

$team add district_$(district) "District $(district)"

$team modify district_$(district) nametagVisibility never