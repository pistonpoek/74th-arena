#
# Description:  Stop a sound for the elevator lifting
#
# Parameters:
# tag
# sound
# type
# volume
# pitch
#

$execute as @a[tag=$(tag)] at @s run stopsound @s $(type) $(sound)