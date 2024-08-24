#
# Description:  Create a item display as passenger of the interaction entity
# Entity @s:    Interaction arena item
#

tag @s add arena_item_display

# Rotate the item display to be flat on the floor
data modify entity @s transformation.left_rotation set value [0.70710678118f,0.0f,0.0f,-0.70710678118f]

# Move the item up so it lays right on top of the floor, instead of the center in the floor
# The value 0.0312f is a little below 1/32 to keep enchancted glow hidden
data modify entity @s transformation.translation[1] set value 0.0312f

# Set to start the interpolation to the transformation position immediately
data modify entity @s start_interpolation set value 0

# Update shadow settings of the item display
data modify entity @s shadow set value 1b
data modify entity @s shadow_radius set value 0.5f
data modify entity @s shadow_strength set value 0.4f

function arena_item:item_display/random_rotate

# Set the item display type to be fixed, instead of none, which has small centered block item displays
data modify entity @s item_display set value fixed