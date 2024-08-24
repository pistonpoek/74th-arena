#
# Description:  Tp entities in elevator to the top
# Entity @s:    Block display elevator
#
# Parameters:
# uuid
# y_position
#

$execute as @a[tag=$(uuid)] at @s run tp @s ~ $(y_position) ~