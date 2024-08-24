#
# Description:  Set a random rotation for the item display
# Entity @s:    Arena item display
#

scoreboard objectives add arena_item_display_rotate dummy

execute store result score #create_random_rotation arena_item_display_rotate run random value 0..3
execute if score #create_random_rotation arena_item_display_rotate matches 0 run \
    data modify entity @s transformation.right_rotation set value [0.0f, 0.0f, 0.0f, 1.0f]
    
execute if score #create_random_rotation arena_item_display_rotate matches 1 run \
    data modify entity @s transformation.right_rotation set value [0.0f, 0.0f, 0.70710678118f, 0.70710678118f]

execute if score #create_random_rotation arena_item_display_rotate matches 2 run \
    data modify entity @s transformation.right_rotation set value [0.0f, 0.0f, -0.70710678118f, 0.70710678118f]

execute if score #create_random_rotation arena_item_display_rotate matches 3 run \
    data modify entity @s transformation.right_rotation set value [0.0f, 0.0f, 1.0f, 0.0f]

scoreboard objectives remove arena_item_display_rotate

# Set to start the interpolation to the transformation position immediately
data modify entity @s start_interpolation set value 0