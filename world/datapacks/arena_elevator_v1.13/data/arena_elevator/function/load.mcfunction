#
# Description:  Load the arena elevator datapack
#

scoreboard objectives add arena_elevator_height dummy "Lift height"
scoreboard objectives add arena_elevator_lift_duration dummy "Lift duration"

# Add default elevator settings
execute unless data storage arena_elevator:. settings.height_offset run \
    data modify storage arena_elevator:. settings.height_offset set value -1
execute unless data storage arena_elevator:. settings.speed run \
    data modify storage arena_elevator:. settings.speed set value 0

# To counter act latency, add additional_duration and make the display delay 4 + additional_duration.
execute unless data storage arena_elevator:. settings.additional_duration run \
    data modify storage arena_elevator:. settings.additional_duration set value 4
execute unless data storage arena_elevator:. settings.display_delay run \
    data modify storage arena_elevator:. settings.display_delay set value 8

# Add default sound effects for the elevator
execute unless data storage arena_elevator:. sound.start run \
    data modify storage arena_elevator:. sound.start set value {sound:block.beacon.activate, type:block, volume:1, pitch:0.2}

execute unless data storage arena_elevator:. sound.moving run \
    data modify storage arena_elevator:. sound.moving set value {sound:block.beacon.ambient, type:block, volume:1, pitch:0.5}

execute unless data storage arena_elevator:. sound.finish run \
    data modify storage arena_elevator:. sound.finish set value {sound:entity.wind_charge.wind_burst, type:block, volume:0.3, pitch:1.4}