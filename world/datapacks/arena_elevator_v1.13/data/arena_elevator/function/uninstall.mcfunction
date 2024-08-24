#
# Description:  Uninstall the arena elevator datapack
#

execute as @e[type=block_display,tag=arena_elevator] run function arena_elevator:remove
kill @e[type=area_effect_cloud,tag=arena_elevator_guard]

scoreboard objectives remove arena_elevator_height
scoreboard objectives remove arena_elevator_lift_duration

data remove storage arena_elevator:. settings
data remove storage arena_elevator:. sound

# Temperary storage location that are used, so might as well clear them
data remove storage arena_elevator:temp top_position
data remove storage arena_elevator:temp y_position
data remove storage arena_elevator:util uuid
data remove storage arena_elevator:sound input