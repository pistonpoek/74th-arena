#
# Description:  Compute the lift duration
# Entity @s:    Block display elevator
#

# Amount of ticks x1000 to levitate a block.
scoreboard players set #temp_lift_duration arena_elevator_lift_duration 22223

# Multiply the duration by the amount of blocks to travel in the elivator
scoreboard players operation #temp_lift_duration arena_elevator_lift_duration *= @s arena_elevator_height

# Consider the levitation speed by deviding the duration by the speed level
execute store result score #temp_speed arena_elevator_lift_duration run data get storage arena_elevator:. settings.speed

# Add one for the 'level' of speed instead of the amplifier
scoreboard players set #1 arena_elevator_lift_duration 1
scoreboard players operation #temp_speed arena_elevator_lift_duration += #1 arena_elevator_lift_duration
scoreboard players reset #1 arena_elevator_lift_duration

scoreboard players operation #temp_lift_duration arena_elevator_lift_duration /= #temp_speed arena_elevator_lift_duration
scoreboard players reset #temp_speed

# Convert the duration to ticks
scoreboard players set #1000 arena_elevator_lift_duration 1000
scoreboard players operation #temp_lift_duration arena_elevator_lift_duration /= #1000 arena_elevator_lift_duration
scoreboard players reset #1000 arena_elevator_lift_duration

# Add the additional duration, for ending higher relative to the top
execute store result score #temp_additonal_duration arena_elevator_lift_duration \
    run data get storage arena_elevator:. settings.additional_duration
scoreboard players operation #temp_lift_duration arena_elevator_lift_duration += #temp_additonal_duration arena_elevator_lift_duration
scoreboard players reset #temp_additonal_duration

# Store the duration in the score for the elevator.
execute store result score @s arena_elevator_lift_duration run scoreboard players get #temp_lift_duration arena_elevator_lift_duration
scoreboard players reset #temp_lift_duration

# Return the lift duration
return run scoreboard players get @s arena_elevator_lift_duration