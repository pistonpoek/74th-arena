#
# Description:  Compute the top position of the elevator for the block display and store it in arena_elevator:temp top_position
# Entity @s:    Block display elevator
#

execute store result score #temp_top_position arena_elevator_height run data get storage arena_elevator:. settings.height_offset

scoreboard players operation #temp_top_position arena_elevator_height += @s arena_elevator_height

execute store result storage arena_elevator:temp top_position int 1 run scoreboard players get #temp_top_position arena_elevator_height

scoreboard players reset #temp_top_position