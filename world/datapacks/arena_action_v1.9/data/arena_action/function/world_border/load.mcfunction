#
# Description:  Load the settings for the world border
#

# Set world border settings
worldborder damage amount 0.2
worldborder damage buffer 0
worldborder warning time 3
worldborder warning distance 1

execute unless data storage arena_action:. settings.world_border_start run \
    data modify storage arena_action:. settings.world_border_start set value {distance:980.0d}
    
execute unless data storage arena_action:. settings.world_border_end run \
    data modify storage arena_action:. settings.world_border_end set value {distance:20.0d}