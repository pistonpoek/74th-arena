#
# Description:  Start the world border for the arena
#

# Set the initial start border distance
data modify storage arena_action:. settings.world_border_start.time set value 0

function arena_action:world_border/set with storage arena_action:. settings.world_border_start

data remove storage arena_action:. settings.world_border_start.time

# Set the world border to transition to the end border distance over the duration time
data modify storage arena_action:. settings.world_border_end.time set from storage arena_action:. settings.duration

function arena_action:world_border/set with storage arena_action:. settings.world_border_end

data remove storage arena_action:. settings.world_border_end.time