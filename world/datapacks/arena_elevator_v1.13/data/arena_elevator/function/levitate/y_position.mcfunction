#
# Description:  Compute the top position of the elevator for levitate and store it in arena_elevator:temp top_position
# Entity @s:    Block display elevator
#

scoreboard players set #temp_position arena_elevator_height 1
execute store result score #height_offset arena_elevator_height run data get storage arena_elevator:. settings.height_offset 1
execute store result score #elevator_y_position arena_elevator_height run data get entity @s Pos[1] 1

# Add the elevator height offset to get the offset for the top of the elevator display block
scoreboard players operation #temp_position arena_elevator_height += #height_offset arena_elevator_height

# Add the y position of the elevator to get the actual start position of the top of the elevator display block
scoreboard players operation #temp_position arena_elevator_height += #elevator_y_position arena_elevator_height

# Add the elevator height to get the top of the to be placed block
scoreboard players operation #temp_position arena_elevator_height += @s arena_elevator_height

execute store result storage arena_elevator:temp y_position int 1 run scoreboard players get #temp_position arena_elevator_height

scoreboard players reset #temp_position
scoreboard players reset #height_offset
scoreboard players reset #elevator_y_position